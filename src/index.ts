// export * from './minecraft-server/minecraft-server-construct';
import * as path from 'path';
import * as ec2 from '@aws-cdk/aws-ec2';
import { App, Stack } from '@aws-cdk/core';
import { MinecraftServer } from './minecraft-server/minecraft-server-construct';

const app = new App();

const stack = new Stack(app, 'test-mc-construct-stack', { env: { account: '496834626558', region: 'us-east-1' } });

new MinecraftServer(stack, 'test-mc-server', {
  gameServerName: 'random-stuff',
  serverZipPath: path.join(__dirname, './server-stuff/FTBInfinityServer_3.1.0.zip'),
  vpc: ec2.Vpc.fromLookup(stack, 'my-vpc', { vpcId: 'vpc-e85ac692' }),
});