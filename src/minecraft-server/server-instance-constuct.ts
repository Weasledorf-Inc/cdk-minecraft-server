import * as fs from 'fs';
import * as path from 'path';
import * as ec2 from '@aws-cdk/aws-ec2';
import * as ecr from '@aws-cdk/aws-ecr';
import { DockerImageAsset } from '@aws-cdk/aws-ecr-assets';
import * as iam from '@aws-cdk/aws-iam';
import { Construct, RemovalPolicy, SymlinkFollowMode } from '@aws-cdk/core';
// import * as ecrdeploy from 'cdk-ecr-deployment';

export interface ServerInstanceProps {
  gameServerName: string;
  serverZipPath: string;
  vpc: ec2.IVpc;
  ec2InstanceClass?: ec2.InstanceClass;
  ec2InstanceName: string;
  ec2InstanceSize?: ec2.InstanceSize;
  customUserDataScript?: ec2.UserData;
  additionalSecurityGroups?: ec2.ISecurityGroup[];
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
  public readonly dockerFile: DockerImageAsset;
  public readonly serverZipPath: string;

  constructor(scope: Construct, id: string, props: ServerInstanceProps) {
    super(scope, id);

    this.gameServerName = props.gameServerName;
    this.serverZipPath = props.serverZipPath;
    this.vpc = props.vpc;
    this.ec2InstanceName = props.ec2InstanceName ?? props.gameServerName;

    this.ec2InstanceClass = props.ec2InstanceClass ?? ec2.InstanceClass.C5A;
    this.ec2InstanceSize = props.ec2InstanceSize ?? ec2.InstanceSize.LARGE;
    this.fullInstanceType = new ec2.InstanceType(`${this.ec2InstanceClass}.${this.ec2InstanceSize}`);

    this.customUserDataScript = props.customUserDataScript ?? generateUserDataScript();
    this.ec2Ami = ec2.MachineImage.latestAmazonLinux();
    this.instanceRole = new iam.Role(this, 'ec2-pull-ecr', {
      assumedBy: new iam.ServicePrincipal('ec2.amazonaws.com'),
    });
    this.instanceRole.addManagedPolicy(iam.ManagedPolicy.fromAwsManagedPolicyName('AmazonSSMManagedInstanceCore'));
    // EC2

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
    const repoName = 'image-hub';
    this.ecrRepo = new ecr.Repository(this, 'ecr-repo', {
      repositoryName: repoName,
      removalPolicy: RemovalPolicy.DESTROY,
    });
    this.ecrRepo.grantPull(this.instanceRole);

    fs.copyFile(this.serverZipPath, path.join(__dirname, '../docker-image/modpack.zip'), function (err) {
      if (err) {
        console.log(err);
      } else {
        console.log('Copy Success!');
      }
    });

    this.dockerFile = new DockerImageAsset(this, 'docker-image', {
      directory: path.join(__dirname, '../docker-image'),
      followSymlinks: SymlinkFollowMode.ALWAYS,
    });

    // new ecrdeploy.ECRDeployment(this, 'deploy-docker-image', {
    //   src: new ecrdeploy.DockerImageName(this.dockerFile.imageUri),
    //   dest: new ecrdeploy.DockerImageName(`${this.ecrRepo.repositoryUri}/mine-craft:version`),
    // });
  }
}

function generateUserDataScript(): ec2.UserData {
  let userData = ec2.UserData.forLinux({});
  userData.addCommands(
    'sudo yum update -y',
    'sudo yum install -y docker',
    'sudo service docker start',
    'sudo usermod -a -G docker ec2-user',
  );

  return userData;
}