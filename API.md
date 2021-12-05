# API Reference <a name="API Reference" id="api-reference"></a>

## Constructs <a name="Constructs" id="constructs"></a>

### MinecraftServer <a name="minecraft-server-construct.MinecraftServer" id="minecraftserverconstructminecraftserver"></a>

#### Initializers <a name="minecraft-server-construct.MinecraftServer.Initializer" id="minecraftserverconstructminecraftserverinitializer"></a>

```typescript
import { MinecraftServer } from 'minecraft-server-construct'

new MinecraftServer(scope: Construct, id: string, props: MinecraftServerProps)
```

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| [`scope`](#minecraftserverconstructminecraftserverparameterscope)<span title="Required">*</span> | [`@aws-cdk/core.Construct`](#@aws-cdk/core.Construct) | *No description.* |
| [`id`](#minecraftserverconstructminecraftserverparameterid)<span title="Required">*</span> | `string` | *No description.* |
| [`props`](#minecraftserverconstructminecraftserverparameterprops)<span title="Required">*</span> | [`minecraft-server-construct.MinecraftServerProps`](#minecraft-server-construct.MinecraftServerProps) | *No description.* |

---

##### `scope`<sup>Required</sup> <a name="minecraft-server-construct.MinecraftServer.parameter.scope" id="minecraftserverconstructminecraftserverparameterscope"></a>

- *Type:* [`@aws-cdk/core.Construct`](#@aws-cdk/core.Construct)

---

##### `id`<sup>Required</sup> <a name="minecraft-server-construct.MinecraftServer.parameter.id" id="minecraftserverconstructminecraftserverparameterid"></a>

- *Type:* `string`

---

##### `props`<sup>Required</sup> <a name="minecraft-server-construct.MinecraftServer.parameter.props" id="minecraftserverconstructminecraftserverparameterprops"></a>

- *Type:* [`minecraft-server-construct.MinecraftServerProps`](#minecraft-server-construct.MinecraftServerProps)

---





## Structs <a name="Structs" id="structs"></a>

### MinecraftServerProps <a name="minecraft-server-construct.MinecraftServerProps" id="minecraftserverconstructminecraftserverprops"></a>

Properties for creating Minecraft server.

#### Initializer <a name="[object Object].Initializer" id="object-objectinitializer"></a>

```typescript
import { MinecraftServerProps } from 'minecraft-server-construct'

const minecraftServerProps: MinecraftServerProps = { ... }
```

#### Properties <a name="Properties" id="properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| [`serverName`](#minecraftserverconstructminecraftserverpropspropertyservername)<span title="Required">*</span> | `string` | Name for Minecraft server. |
| [`serverZipPath`](#minecraftserverconstructminecraftserverpropspropertyserverzippath)<span title="Required">*</span> | `string` | Path to zip folder for Minecraft server can be in s3 or local. |
| [`vpc`](#minecraftserverconstructminecraftserverpropspropertyvpc)<span title="Required">*</span> | [`@aws-cdk/aws-ec2.IVpc`](#@aws-cdk/aws-ec2.IVpc) | The VPC to use for creating the Minecraft server's. |
| [`additionalSecurityGroups`](#minecraftserverconstructminecraftserverpropspropertyadditionalsecuritygroups) | [`@aws-cdk/aws-ec2.ISecurityGroup`](#@aws-cdk/aws-ec2.ISecurityGroup)[] | Additional security groups. |
| [`customUserDataScript`](#minecraftserverconstructminecraftserverpropspropertycustomuserdatascript) | [`@aws-cdk/aws-ec2.UserData`](#@aws-cdk/aws-ec2.UserData) | Custom user data script. |
| [`ec2InstanceName`](#minecraftserverconstructminecraftserverpropspropertyec2instancename) | `string` | Name to be given to EC2 instance where minecraft server will run. |
| [`ec2InstanceSize`](#minecraftserverconstructminecraftserverpropspropertyec2instancesize) | [`@aws-cdk/aws-ec2.InstanceSize`](#@aws-cdk/aws-ec2.InstanceSize) | The ec2 instance size for hosting the minecraft server. |
| [`ec2InstanceType`](#minecraftserverconstructminecraftserverpropspropertyec2instancetype) | [`@aws-cdk/aws-ec2.InstanceType`](#@aws-cdk/aws-ec2.InstanceType) | The ec2 instance type for hosting the minecraft server. |
| [`serverManagementAPI`](#minecraftserverconstructminecraftserverpropspropertyservermanagementapi) | `boolean` | Whether or not the server management API should be created as part of the deployment. |

---

##### `serverName`<sup>Required</sup> <a name="minecraft-server-construct.MinecraftServerProps.property.serverName" id="minecraftserverconstructminecraftserverpropspropertyservername"></a>

```typescript
public readonly serverName: string;
```

- *Type:* `string`

Name for Minecraft server.

---

##### `serverZipPath`<sup>Required</sup> <a name="minecraft-server-construct.MinecraftServerProps.property.serverZipPath" id="minecraftserverconstructminecraftserverpropspropertyserverzippath"></a>

```typescript
public readonly serverZipPath: string;
```

- *Type:* `string`

Path to zip folder for Minecraft server can be in s3 or local.

---

##### `vpc`<sup>Required</sup> <a name="minecraft-server-construct.MinecraftServerProps.property.vpc" id="minecraftserverconstructminecraftserverpropspropertyvpc"></a>

```typescript
public readonly vpc: IVpc;
```

- *Type:* [`@aws-cdk/aws-ec2.IVpc`](#@aws-cdk/aws-ec2.IVpc)

The VPC to use for creating the Minecraft server's.

---

##### `additionalSecurityGroups`<sup>Optional</sup> <a name="minecraft-server-construct.MinecraftServerProps.property.additionalSecurityGroups" id="minecraftserverconstructminecraftserverpropspropertyadditionalsecuritygroups"></a>

```typescript
public readonly additionalSecurityGroups: ISecurityGroup[];
```

- *Type:* [`@aws-cdk/aws-ec2.ISecurityGroup`](#@aws-cdk/aws-ec2.ISecurityGroup)[]

Additional security groups.

---

##### `customUserDataScript`<sup>Optional</sup> <a name="minecraft-server-construct.MinecraftServerProps.property.customUserDataScript" id="minecraftserverconstructminecraftserverpropspropertycustomuserdatascript"></a>

```typescript
public readonly customUserDataScript: UserData;
```

- *Type:* [`@aws-cdk/aws-ec2.UserData`](#@aws-cdk/aws-ec2.UserData)

Custom user data script.

---

##### `ec2InstanceName`<sup>Optional</sup> <a name="minecraft-server-construct.MinecraftServerProps.property.ec2InstanceName" id="minecraftserverconstructminecraftserverpropspropertyec2instancename"></a>

```typescript
public readonly ec2InstanceName: string;
```

- *Type:* `string`
- *Default:* the Minecraft server name will be used

Name to be given to EC2 instance where minecraft server will run.

---

##### `ec2InstanceSize`<sup>Optional</sup> <a name="minecraft-server-construct.MinecraftServerProps.property.ec2InstanceSize" id="minecraftserverconstructminecraftserverpropspropertyec2instancesize"></a>

```typescript
public readonly ec2InstanceSize: InstanceSize;
```

- *Type:* [`@aws-cdk/aws-ec2.InstanceSize`](#@aws-cdk/aws-ec2.InstanceSize)
- *Default:* large

The ec2 instance size for hosting the minecraft server.

---

##### `ec2InstanceType`<sup>Optional</sup> <a name="minecraft-server-construct.MinecraftServerProps.property.ec2InstanceType" id="minecraftserverconstructminecraftserverpropspropertyec2instancetype"></a>

```typescript
public readonly ec2InstanceType: InstanceType;
```

- *Type:* [`@aws-cdk/aws-ec2.InstanceType`](#@aws-cdk/aws-ec2.InstanceType)
- *Default:* c5a

The ec2 instance type for hosting the minecraft server.

---

##### `serverManagementAPI`<sup>Optional</sup> <a name="minecraft-server-construct.MinecraftServerProps.property.serverManagementAPI" id="minecraftserverconstructminecraftserverpropspropertyservermanagementapi"></a>

```typescript
public readonly serverManagementAPI: boolean;
```

- *Type:* `boolean`
- *Default:* true

Whether or not the server management API should be created as part of the deployment.

The server api will allow you to do things such as start and stop your ec2 instance

---



