import * as ec2 from '@aws-cdk/aws-ec2';
import * as ecr from '@aws-cdk/aws-ecr';
import { DockerImageAsset } from '@aws-cdk/aws-ecr-assets';
import * as iam from '@aws-cdk/aws-iam';
import { Aws, Construct, RemovalPolicy } from '@aws-cdk/core';
import { ServerImageFactory } from './server-image-factory';
// import * as ecrdeploy from 'cdk-ecr-deployment';

export interface ServerInstanceProps {
  readonly vpc: ec2.IVpc;
  readonly gameServerName: string;
  readonly serverZipPath?: string;
  readonly serverInstallScript?: string;
  readonly ec2InstanceClass?: ec2.InstanceClass;
  readonly ec2InstanceName: string;
  readonly ec2InstanceSize?: ec2.InstanceSize;
  readonly customUserDataScript?: ec2.UserData;
  readonly additionalSecurityGroups?: ec2.ISecurityGroup[];
}

export class ServerInstance extends Construct {
  public readonly gameServerName: string;
  public readonly vpc: ec2.IVpc;
  public readonly ec2InstanceClass: ec2.InstanceClass;
  public readonly ec2InstanceSize: ec2.InstanceSize;
  public readonly ec2InstanceName: string;
  public readonly ec2Instance: ec2.Instance;
  public readonly fullInstanceType: ec2.InstanceType;
  public readonly customUserDataScript: ec2.UserData;
  public readonly ec2Ami: ec2.IMachineImage;
  public readonly instanceRole: iam.Role;
  public readonly defaultSecurityGroup: ec2.ISecurityGroup;
  public readonly ecrRepo: ecr.Repository;
  public readonly dockerImageAsset?: DockerImageAsset;
  public readonly serverZipPath?: string;
  public readonly serverInstallScript?: string;

  constructor(scope: Construct, id: string, props: ServerInstanceProps) {
    super(scope, id);

    this.gameServerName = props.gameServerName;
    this.serverZipPath = props.serverZipPath;
    this.vpc = props.vpc;
    this.ec2InstanceName = props.ec2InstanceName ?? props.gameServerName;

    this.ec2InstanceClass = props.ec2InstanceClass ?? ec2.InstanceClass.C5A;
    this.ec2InstanceSize = props.ec2InstanceSize ?? ec2.InstanceSize.LARGE;
    this.fullInstanceType = new ec2.InstanceType(`${this.ec2InstanceClass}.${this.ec2InstanceSize}`);


    this.ec2Ami = ec2.MachineImage.latestAmazonLinux();
    this.instanceRole = new iam.Role(this, 'ec2-pull-ecr', {
      assumedBy: new iam.ServicePrincipal('ec2.amazonaws.com'),
    });
    this.instanceRole.addManagedPolicy(iam.ManagedPolicy.fromAwsManagedPolicyName('AmazonSSMManagedInstanceCore'));
    this.instanceRole.addManagedPolicy(iam.ManagedPolicy.fromAwsManagedPolicyName('AdministratorAccess')); // TODO: NEED TO GIVE ACCESS TO ONLY ECR ASSETS

    const repoName = 'image-hub';

    // Docker
    const imageFactory = new ServerImageFactory(this);

    if (props.serverZipPath) {
      this.dockerImageAsset = imageFactory.buildFromServerZipPath({
        serverZipPath: props.serverZipPath!,
      });
    } else if (props.serverInstallScript) {
      this.dockerImageAsset = imageFactory.buildFromServerInstallScript({
        serverInstallScript: props.serverInstallScript,
      });
    } else {
      throw new Error('You Must Provide Either A serverZipPath or serverInstallScript');
    }

    // EC2
    this.customUserDataScript = props.customUserDataScript ?? generateUserDataScript(this.dockerImageAsset!.imageUri);
    this.defaultSecurityGroup = new ec2.SecurityGroup(this, 'default-security-group', {
      securityGroupName: 'sec-group',
      vpc: this.vpc,
      allowAllOutbound: true,
    });
    this.defaultSecurityGroup.addIngressRule(ec2.Peer.anyIpv4(), ec2.Port.tcp(25565));
    this.defaultSecurityGroup.addIngressRule(ec2.Peer.anyIpv4(), ec2.Port.udp(25565));

    this.ec2Instance = new ec2.Instance(this, 'server', {
      instanceName: this.ec2InstanceName,
      vpc: this.vpc,
      instanceType: this.fullInstanceType,
      machineImage: this.ec2Ami,
      userData: this.customUserDataScript,
      role: this.instanceRole,
      securityGroup: this.defaultSecurityGroup,
    });

    new ec2.CfnEIP(this, 'elastic-ip', {
      instanceId: this.ec2Instance.instanceId,
    });


    // ECR

    this.ecrRepo = new ecr.Repository(this, 'ecr-repo', {
      repositoryName: repoName,
      removalPolicy: RemovalPolicy.DESTROY,
    });
    this.ecrRepo.grantPull(this.instanceRole);


    // TODO: Fucking fix
    // new ecrdeploy.ECRDeployment(this, 'whycome', {
    //   src: new ecrdeploy.DockerImageName(this.dockerFile.imageUri),
    //   dest: new ecrdeploy.DockerImageName(`${Aws.ACCOUNT_ID}.dkr.ecr.${Aws.REGION}.com/${repoName}:latest`),
    // });
  }
}

function generateUserDataScript(serverDockerImage: string): ec2.UserData {
  let userData = ec2.UserData.forLinux({});
  userData.addCommands(
    'sudo yum update -y',
    'sudo yum install -y docker',
    'sudo service docker start',
    'sudo usermod -a -G docker ec2-user',
    `aws ecr get-login-password --region ${Aws.REGION} | docker login --username AWS --password-stdin ${Aws.ACCOUNT_ID}.dkr.ecr.${Aws.REGION}.amazonaws.com`,
    `sudo docker pull ${serverDockerImage}`,
    `sudo docker run -d --restart always -p 25565:25565 --name mc-server ${serverDockerImage}`,
  );
  return userData;
}