# CDK Minecraft Server

**Please advise this library is still a work in progress and pre 1.0**

Create an AWS hosted Minecraft server quick and easy within minutes!!

## Getting Started

```typescript
import * as mcServer from 'ckd-minecraft-server'

// Lookup VPC
const vpc = ec2.Vpc.fromLookup(this, 'my-default-vpc', {
    vpcName: 'my-default-vpc',
});

// Create Server
new mcServer.MinecraftServer(this, 'MyMCServer', {
    vpc: vpc,
    gameServerName: 'MyServer',
    serverZipPath: path.join(__dirname, './some/path/modpack.zip'),
});
```