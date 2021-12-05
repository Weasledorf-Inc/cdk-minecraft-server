import { IVpc, ISecurityGroup, InstanceType, InstanceSize, UserData } from '@aws-cdk/aws-ec2';
import { Construct } from '@aws-cdk/core';

// TODO: Add EBS Options & Snapshot options in the API inteface
// TODO: Add Lambdas for creating Snapshots

/**
 * Properties for creating Minecraft server
 */
export interface MinecraftServerProps {
  /**
     * Name for Minecraft server.
     */
  readonly serverName: string;
  /**
     * Path to zip folder for Minecraft server can be in s3 or local
     *
     * @example
     *  /some/directory/location/minecraft.zip
     *  s3://somebucket/minecraft.zip
     */
  readonly serverZipPath: string;
  /**
     * The VPC to use for creating the Minecraft server's
     *
     * @attribute
     */
  readonly vpc: IVpc;
  /**
     * Name to be given to EC2 instance where minecraft server will run.
     *
     * @default - the Minecraft server name will be used
     */
  readonly ec2InstanceName?: string;
  /**
       * The ec2 instance type for hosting the minecraft server
       *
       * @default - c5a
       */
  readonly ec2InstanceType?: InstanceType;
  /**
       * The ec2 instance size for hosting the minecraft server
       *
       * @default - large
       */
  readonly ec2InstanceSize?: InstanceSize;
  /**
     * Whether or not the server management API should be created as part of
     * the deployment. The server api will allow you to do things such as start
     * and stop your ec2 instance
     *
     * @default true
     */
  readonly serverManagementAPI?: boolean;
  /**
     * Custom user data script
     */
  readonly customUserDataScript?: UserData;
  /**
     * Additional security groups
     *
     */
  readonly additionalSecurityGroups?: ISecurityGroup[];
}

export class MinecraftServer extends Construct {
  constructor(scope: Construct, id: string, props: MinecraftServerProps) {
    super(scope, id);
    props.vpc;
  }
}