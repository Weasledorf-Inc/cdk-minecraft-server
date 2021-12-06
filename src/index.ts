// export * from './minecraft-server/minecraft-server-construct';
// import * as path from 'path';
// import * as ec2 from '@aws-cdk/aws-ec2';
// import { App, Stack } from '@aws-cdk/core';
// import { MinecraftServer } from './minecraft-server/minecraft-server-construct';

// const app = new App();
// // export const
// const stack = new Stack(app, 'test-mc-construct-stack', { env: { account: '496834626558', region: 'us-east-1' } });

// const vpc = ec2.Vpc.fromLookup(stack, 'my-vpc', { vpcName: 'my-default-vpc' });

// new MinecraftServer(stack, 'KidsMCServer', {
//   vpc: vpc,
//   gameServerName: 'KidsMinecraftServer',
//   serverZipPath: path.join(__dirname, './server-stuff/FTBInfinityServer_3.1.0.zip'),
// });
