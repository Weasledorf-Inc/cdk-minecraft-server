# API Reference <a name="API Reference" id="api-reference"></a>

## Constructs <a name="Constructs" id="constructs"></a>

### ManagementAPI <a name="cdk-minecraft-server.ManagementAPI" id="cdkminecraftservermanagementapi"></a>

#### Initializers <a name="cdk-minecraft-server.ManagementAPI.Initializer" id="cdkminecraftservermanagementapiinitializer"></a>

```typescript
import { ManagementAPI } from 'cdk-minecraft-server'

new ManagementAPI(scope: Construct, id: string, props: ManagementAPIProps)
```

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| [`scope`](#cdkminecraftservermanagementapiparameterscope)<span title="Required">*</span> | [`@aws-cdk/core.Construct`](#@aws-cdk/core.Construct) | *No description.* |
| [`id`](#cdkminecraftservermanagementapiparameterid)<span title="Required">*</span> | `string` | *No description.* |
| [`props`](#cdkminecraftservermanagementapiparameterprops)<span title="Required">*</span> | [`cdk-minecraft-server.ManagementAPIProps`](#cdk-minecraft-server.ManagementAPIProps) | *No description.* |

---

##### `scope`<sup>Required</sup> <a name="cdk-minecraft-server.ManagementAPI.parameter.scope" id="cdkminecraftservermanagementapiparameterscope"></a>

- *Type:* [`@aws-cdk/core.Construct`](#@aws-cdk/core.Construct)

---

##### `id`<sup>Required</sup> <a name="cdk-minecraft-server.ManagementAPI.parameter.id" id="cdkminecraftservermanagementapiparameterid"></a>

- *Type:* `string`

---

##### `props`<sup>Required</sup> <a name="cdk-minecraft-server.ManagementAPI.parameter.props" id="cdkminecraftservermanagementapiparameterprops"></a>

- *Type:* [`cdk-minecraft-server.ManagementAPIProps`](#cdk-minecraft-server.ManagementAPIProps)

---



#### Properties <a name="Properties" id="properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| [`managementAPIGateway`](#cdkminecraftservermanagementapipropertymanagementapigateway)<span title="Required">*</span> | [`@aws-cdk/aws-apigatewayv2.HttpApi`](#@aws-cdk/aws-apigatewayv2.HttpApi) | *No description.* |
| [`shutdownServerLambda`](#cdkminecraftservermanagementapipropertyshutdownserverlambda)<span title="Required">*</span> | [`@aws-cdk/aws-lambda-python.PythonFunction`](#@aws-cdk/aws-lambda-python.PythonFunction) | *No description.* |
| [`startServerLambda`](#cdkminecraftservermanagementapipropertystartserverlambda)<span title="Required">*</span> | [`@aws-cdk/aws-lambda-python.PythonFunction`](#@aws-cdk/aws-lambda-python.PythonFunction) | *No description.* |
| [`statusLambda`](#cdkminecraftservermanagementapipropertystatuslambda)<span title="Required">*</span> | [`@aws-cdk/aws-lambda-python.PythonFunction`](#@aws-cdk/aws-lambda-python.PythonFunction) | *No description.* |

---

##### `managementAPIGateway`<sup>Required</sup> <a name="cdk-minecraft-server.ManagementAPI.property.managementAPIGateway" id="cdkminecraftservermanagementapipropertymanagementapigateway"></a>

```typescript
public readonly managementAPIGateway: HttpApi;
```

- *Type:* [`@aws-cdk/aws-apigatewayv2.HttpApi`](#@aws-cdk/aws-apigatewayv2.HttpApi)

---

##### `shutdownServerLambda`<sup>Required</sup> <a name="cdk-minecraft-server.ManagementAPI.property.shutdownServerLambda" id="cdkminecraftservermanagementapipropertyshutdownserverlambda"></a>

```typescript
public readonly shutdownServerLambda: PythonFunction;
```

- *Type:* [`@aws-cdk/aws-lambda-python.PythonFunction`](#@aws-cdk/aws-lambda-python.PythonFunction)

---

##### `startServerLambda`<sup>Required</sup> <a name="cdk-minecraft-server.ManagementAPI.property.startServerLambda" id="cdkminecraftservermanagementapipropertystartserverlambda"></a>

```typescript
public readonly startServerLambda: PythonFunction;
```

- *Type:* [`@aws-cdk/aws-lambda-python.PythonFunction`](#@aws-cdk/aws-lambda-python.PythonFunction)

---

##### `statusLambda`<sup>Required</sup> <a name="cdk-minecraft-server.ManagementAPI.property.statusLambda" id="cdkminecraftservermanagementapipropertystatuslambda"></a>

```typescript
public readonly statusLambda: PythonFunction;
```

- *Type:* [`@aws-cdk/aws-lambda-python.PythonFunction`](#@aws-cdk/aws-lambda-python.PythonFunction)

---


### MinecraftServer <a name="cdk-minecraft-server.MinecraftServer" id="cdkminecraftserverminecraftserver"></a>

#### Initializers <a name="cdk-minecraft-server.MinecraftServer.Initializer" id="cdkminecraftserverminecraftserverinitializer"></a>

```typescript
import { MinecraftServer } from 'cdk-minecraft-server'

new MinecraftServer(scope: Construct, id: string, props: MinecraftServerProps)
```

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| [`scope`](#cdkminecraftserverminecraftserverparameterscope)<span title="Required">*</span> | [`@aws-cdk/core.Construct`](#@aws-cdk/core.Construct) | *No description.* |
| [`id`](#cdkminecraftserverminecraftserverparameterid)<span title="Required">*</span> | `string` | *No description.* |
| [`props`](#cdkminecraftserverminecraftserverparameterprops)<span title="Required">*</span> | [`cdk-minecraft-server.MinecraftServerProps`](#cdk-minecraft-server.MinecraftServerProps) | *No description.* |

---

##### `scope`<sup>Required</sup> <a name="cdk-minecraft-server.MinecraftServer.parameter.scope" id="cdkminecraftserverminecraftserverparameterscope"></a>

- *Type:* [`@aws-cdk/core.Construct`](#@aws-cdk/core.Construct)

---

##### `id`<sup>Required</sup> <a name="cdk-minecraft-server.MinecraftServer.parameter.id" id="cdkminecraftserverminecraftserverparameterid"></a>

- *Type:* `string`

---

##### `props`<sup>Required</sup> <a name="cdk-minecraft-server.MinecraftServer.parameter.props" id="cdkminecraftserverminecraftserverparameterprops"></a>

- *Type:* [`cdk-minecraft-server.MinecraftServerProps`](#cdk-minecraft-server.MinecraftServerProps)

---



#### Properties <a name="Properties" id="properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| [`serverInstance`](#cdkminecraftserverminecraftserverpropertyserverinstance)<span title="Required">*</span> | [`cdk-minecraft-server.ServerInstance`](#cdk-minecraft-server.ServerInstance) | *No description.* |
| [`managementAPI`](#cdkminecraftserverminecraftserverpropertymanagementapi) | [`cdk-minecraft-server.ManagementAPI`](#cdk-minecraft-server.ManagementAPI) | *No description.* |

---

##### `serverInstance`<sup>Required</sup> <a name="cdk-minecraft-server.MinecraftServer.property.serverInstance" id="cdkminecraftserverminecraftserverpropertyserverinstance"></a>

```typescript
public readonly serverInstance: ServerInstance;
```

- *Type:* [`cdk-minecraft-server.ServerInstance`](#cdk-minecraft-server.ServerInstance)

---

##### `managementAPI`<sup>Optional</sup> <a name="cdk-minecraft-server.MinecraftServer.property.managementAPI" id="cdkminecraftserverminecraftserverpropertymanagementapi"></a>

```typescript
public readonly managementAPI: ManagementAPI;
```

- *Type:* [`cdk-minecraft-server.ManagementAPI`](#cdk-minecraft-server.ManagementAPI)

---


### ServerInstance <a name="cdk-minecraft-server.ServerInstance" id="cdkminecraftserverserverinstance"></a>

#### Initializers <a name="cdk-minecraft-server.ServerInstance.Initializer" id="cdkminecraftserverserverinstanceinitializer"></a>

```typescript
import { ServerInstance } from 'cdk-minecraft-server'

new ServerInstance(scope: Construct, id: string, props: ServerInstanceProps)
```

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| [`scope`](#cdkminecraftserverserverinstanceparameterscope)<span title="Required">*</span> | [`@aws-cdk/core.Construct`](#@aws-cdk/core.Construct) | *No description.* |
| [`id`](#cdkminecraftserverserverinstanceparameterid)<span title="Required">*</span> | `string` | *No description.* |
| [`props`](#cdkminecraftserverserverinstanceparameterprops)<span title="Required">*</span> | [`cdk-minecraft-server.ServerInstanceProps`](#cdk-minecraft-server.ServerInstanceProps) | *No description.* |

---

##### `scope`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstance.parameter.scope" id="cdkminecraftserverserverinstanceparameterscope"></a>

- *Type:* [`@aws-cdk/core.Construct`](#@aws-cdk/core.Construct)

---

##### `id`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstance.parameter.id" id="cdkminecraftserverserverinstanceparameterid"></a>

- *Type:* `string`

---

##### `props`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstance.parameter.props" id="cdkminecraftserverserverinstanceparameterprops"></a>

- *Type:* [`cdk-minecraft-server.ServerInstanceProps`](#cdk-minecraft-server.ServerInstanceProps)

---



#### Properties <a name="Properties" id="properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| [`customUserDataScript`](#cdkminecraftserverserverinstancepropertycustomuserdatascript)<span title="Required">*</span> | [`@aws-cdk/aws-ec2.UserData`](#@aws-cdk/aws-ec2.UserData) | *No description.* |
| [`defaultSecurityGroup`](#cdkminecraftserverserverinstancepropertydefaultsecuritygroup)<span title="Required">*</span> | [`@aws-cdk/aws-ec2.ISecurityGroup`](#@aws-cdk/aws-ec2.ISecurityGroup) | *No description.* |
| [`ec2Ami`](#cdkminecraftserverserverinstancepropertyec2ami)<span title="Required">*</span> | [`@aws-cdk/aws-ec2.IMachineImage`](#@aws-cdk/aws-ec2.IMachineImage) | *No description.* |
| [`ec2Instance`](#cdkminecraftserverserverinstancepropertyec2instance)<span title="Required">*</span> | [`@aws-cdk/aws-ec2.Instance`](#@aws-cdk/aws-ec2.Instance) | *No description.* |
| [`ec2InstanceClass`](#cdkminecraftserverserverinstancepropertyec2instanceclass)<span title="Required">*</span> | [`@aws-cdk/aws-ec2.InstanceClass`](#@aws-cdk/aws-ec2.InstanceClass) | *No description.* |
| [`ec2InstanceName`](#cdkminecraftserverserverinstancepropertyec2instancename)<span title="Required">*</span> | `string` | *No description.* |
| [`ec2InstanceSize`](#cdkminecraftserverserverinstancepropertyec2instancesize)<span title="Required">*</span> | [`@aws-cdk/aws-ec2.InstanceSize`](#@aws-cdk/aws-ec2.InstanceSize) | *No description.* |
| [`ecrRepo`](#cdkminecraftserverserverinstancepropertyecrrepo)<span title="Required">*</span> | [`@aws-cdk/aws-ecr.Repository`](#@aws-cdk/aws-ecr.Repository) | *No description.* |
| [`fullInstanceType`](#cdkminecraftserverserverinstancepropertyfullinstancetype)<span title="Required">*</span> | [`@aws-cdk/aws-ec2.InstanceType`](#@aws-cdk/aws-ec2.InstanceType) | *No description.* |
| [`gameServerName`](#cdkminecraftserverserverinstancepropertygameservername)<span title="Required">*</span> | `string` | *No description.* |
| [`instanceRole`](#cdkminecraftserverserverinstancepropertyinstancerole)<span title="Required">*</span> | [`@aws-cdk/aws-iam.Role`](#@aws-cdk/aws-iam.Role) | *No description.* |
| [`vpc`](#cdkminecraftserverserverinstancepropertyvpc)<span title="Required">*</span> | [`@aws-cdk/aws-ec2.IVpc`](#@aws-cdk/aws-ec2.IVpc) | *No description.* |
| [`dockerImageAsset`](#cdkminecraftserverserverinstancepropertydockerimageasset) | [`@aws-cdk/aws-ecr-assets.DockerImageAsset`](#@aws-cdk/aws-ecr-assets.DockerImageAsset) | *No description.* |
| [`serverInstallScript`](#cdkminecraftserverserverinstancepropertyserverinstallscript) | `string` | *No description.* |
| [`serverZipPath`](#cdkminecraftserverserverinstancepropertyserverzippath) | `string` | *No description.* |

---

##### `customUserDataScript`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstance.property.customUserDataScript" id="cdkminecraftserverserverinstancepropertycustomuserdatascript"></a>

```typescript
public readonly customUserDataScript: UserData;
```

- *Type:* [`@aws-cdk/aws-ec2.UserData`](#@aws-cdk/aws-ec2.UserData)

---

##### `defaultSecurityGroup`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstance.property.defaultSecurityGroup" id="cdkminecraftserverserverinstancepropertydefaultsecuritygroup"></a>

```typescript
public readonly defaultSecurityGroup: ISecurityGroup;
```

- *Type:* [`@aws-cdk/aws-ec2.ISecurityGroup`](#@aws-cdk/aws-ec2.ISecurityGroup)

---

##### `ec2Ami`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstance.property.ec2Ami" id="cdkminecraftserverserverinstancepropertyec2ami"></a>

```typescript
public readonly ec2Ami: IMachineImage;
```

- *Type:* [`@aws-cdk/aws-ec2.IMachineImage`](#@aws-cdk/aws-ec2.IMachineImage)

---

##### `ec2Instance`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstance.property.ec2Instance" id="cdkminecraftserverserverinstancepropertyec2instance"></a>

```typescript
public readonly ec2Instance: Instance;
```

- *Type:* [`@aws-cdk/aws-ec2.Instance`](#@aws-cdk/aws-ec2.Instance)

---

##### `ec2InstanceClass`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstance.property.ec2InstanceClass" id="cdkminecraftserverserverinstancepropertyec2instanceclass"></a>

```typescript
public readonly ec2InstanceClass: InstanceClass;
```

- *Type:* [`@aws-cdk/aws-ec2.InstanceClass`](#@aws-cdk/aws-ec2.InstanceClass)

---

##### `ec2InstanceName`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstance.property.ec2InstanceName" id="cdkminecraftserverserverinstancepropertyec2instancename"></a>

```typescript
public readonly ec2InstanceName: string;
```

- *Type:* `string`

---

##### `ec2InstanceSize`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstance.property.ec2InstanceSize" id="cdkminecraftserverserverinstancepropertyec2instancesize"></a>

```typescript
public readonly ec2InstanceSize: InstanceSize;
```

- *Type:* [`@aws-cdk/aws-ec2.InstanceSize`](#@aws-cdk/aws-ec2.InstanceSize)

---

##### `ecrRepo`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstance.property.ecrRepo" id="cdkminecraftserverserverinstancepropertyecrrepo"></a>

```typescript
public readonly ecrRepo: Repository;
```

- *Type:* [`@aws-cdk/aws-ecr.Repository`](#@aws-cdk/aws-ecr.Repository)

---

##### `fullInstanceType`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstance.property.fullInstanceType" id="cdkminecraftserverserverinstancepropertyfullinstancetype"></a>

```typescript
public readonly fullInstanceType: InstanceType;
```

- *Type:* [`@aws-cdk/aws-ec2.InstanceType`](#@aws-cdk/aws-ec2.InstanceType)

---

##### `gameServerName`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstance.property.gameServerName" id="cdkminecraftserverserverinstancepropertygameservername"></a>

```typescript
public readonly gameServerName: string;
```

- *Type:* `string`

---

##### `instanceRole`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstance.property.instanceRole" id="cdkminecraftserverserverinstancepropertyinstancerole"></a>

```typescript
public readonly instanceRole: Role;
```

- *Type:* [`@aws-cdk/aws-iam.Role`](#@aws-cdk/aws-iam.Role)

---

##### `vpc`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstance.property.vpc" id="cdkminecraftserverserverinstancepropertyvpc"></a>

```typescript
public readonly vpc: IVpc;
```

- *Type:* [`@aws-cdk/aws-ec2.IVpc`](#@aws-cdk/aws-ec2.IVpc)

---

##### `dockerImageAsset`<sup>Optional</sup> <a name="cdk-minecraft-server.ServerInstance.property.dockerImageAsset" id="cdkminecraftserverserverinstancepropertydockerimageasset"></a>

```typescript
public readonly dockerImageAsset: DockerImageAsset;
```

- *Type:* [`@aws-cdk/aws-ecr-assets.DockerImageAsset`](#@aws-cdk/aws-ecr-assets.DockerImageAsset)

---

##### `serverInstallScript`<sup>Optional</sup> <a name="cdk-minecraft-server.ServerInstance.property.serverInstallScript" id="cdkminecraftserverserverinstancepropertyserverinstallscript"></a>

```typescript
public readonly serverInstallScript: string;
```

- *Type:* `string`

---

##### `serverZipPath`<sup>Optional</sup> <a name="cdk-minecraft-server.ServerInstance.property.serverZipPath" id="cdkminecraftserverserverinstancepropertyserverzippath"></a>

```typescript
public readonly serverZipPath: string;
```

- *Type:* `string`

---


## Structs <a name="Structs" id="structs"></a>

### ManagementAPIProps <a name="cdk-minecraft-server.ManagementAPIProps" id="cdkminecraftservermanagementapiprops"></a>

#### Initializer <a name="[object Object].Initializer" id="object-objectinitializer"></a>

```typescript
import { ManagementAPIProps } from 'cdk-minecraft-server'

const managementAPIProps: ManagementAPIProps = { ... }
```

#### Properties <a name="Properties" id="properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| [`apiName`](#cdkminecraftservermanagementapipropspropertyapiname)<span title="Required">*</span> | `string` | *No description.* |
| [`serverInstance`](#cdkminecraftservermanagementapipropspropertyserverinstance)<span title="Required">*</span> | [`cdk-minecraft-server.ServerInstance`](#cdk-minecraft-server.ServerInstance) | *No description.* |

---

##### `apiName`<sup>Required</sup> <a name="cdk-minecraft-server.ManagementAPIProps.property.apiName" id="cdkminecraftservermanagementapipropspropertyapiname"></a>

```typescript
public readonly apiName: string;
```

- *Type:* `string`

---

##### `serverInstance`<sup>Required</sup> <a name="cdk-minecraft-server.ManagementAPIProps.property.serverInstance" id="cdkminecraftservermanagementapipropspropertyserverinstance"></a>

```typescript
public readonly serverInstance: ServerInstance;
```

- *Type:* [`cdk-minecraft-server.ServerInstance`](#cdk-minecraft-server.ServerInstance)

---

### MinecraftServerProps <a name="cdk-minecraft-server.MinecraftServerProps" id="cdkminecraftserverminecraftserverprops"></a>

Properties for creating Minecraft server.

#### Initializer <a name="[object Object].Initializer" id="object-objectinitializer"></a>

```typescript
import { MinecraftServerProps } from 'cdk-minecraft-server'

const minecraftServerProps: MinecraftServerProps = { ... }
```

#### Properties <a name="Properties" id="properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| [`gameServerName`](#cdkminecraftserverminecraftserverpropspropertygameservername)<span title="Required">*</span> | `string` | Name for Minecraft server. |
| [`vpc`](#cdkminecraftserverminecraftserverpropspropertyvpc)<span title="Required">*</span> | [`@aws-cdk/aws-ec2.IVpc`](#@aws-cdk/aws-ec2.IVpc) | The VPC to use for creating the Minecraft server's. |
| [`additionalSecurityGroups`](#cdkminecraftserverminecraftserverpropspropertyadditionalsecuritygroups) | [`@aws-cdk/aws-ec2.ISecurityGroup`](#@aws-cdk/aws-ec2.ISecurityGroup)[] | Additional security groups. |
| [`customUserDataScript`](#cdkminecraftserverminecraftserverpropspropertycustomuserdatascript) | [`@aws-cdk/aws-ec2.UserData`](#@aws-cdk/aws-ec2.UserData) | Custom user data script. |
| [`ec2InstanceClass`](#cdkminecraftserverminecraftserverpropspropertyec2instanceclass) | [`@aws-cdk/aws-ec2.InstanceClass`](#@aws-cdk/aws-ec2.InstanceClass) | The ec2 instance type for hosting the minecraft server. |
| [`ec2InstanceName`](#cdkminecraftserverminecraftserverpropspropertyec2instancename) | `string` | Name to be given to EC2 instance where minecraft server will run. |
| [`ec2InstanceSize`](#cdkminecraftserverminecraftserverpropspropertyec2instancesize) | [`@aws-cdk/aws-ec2.InstanceSize`](#@aws-cdk/aws-ec2.InstanceSize) | The ec2 instance size for hosting the minecraft server. |
| [`serverInstallScript`](#cdkminecraftserverminecraftserverpropspropertyserverinstallscript) | `string` | Path to server install script. |
| [`serverManagementAPI`](#cdkminecraftserverminecraftserverpropspropertyservermanagementapi) | `boolean` | Whether or not the server management API should be created as part of the deployment. |
| [`serverZipPath`](#cdkminecraftserverminecraftserverpropspropertyserverzippath) | `string` | Path to zip folder for Minecraft server can be in s3 or local If this is not set then the serverInstallScript must be! |

---

##### `gameServerName`<sup>Required</sup> <a name="cdk-minecraft-server.MinecraftServerProps.property.gameServerName" id="cdkminecraftserverminecraftserverpropspropertygameservername"></a>

```typescript
public readonly gameServerName: string;
```

- *Type:* `string`

Name for Minecraft server.

---

##### `vpc`<sup>Required</sup> <a name="cdk-minecraft-server.MinecraftServerProps.property.vpc" id="cdkminecraftserverminecraftserverpropspropertyvpc"></a>

```typescript
public readonly vpc: IVpc;
```

- *Type:* [`@aws-cdk/aws-ec2.IVpc`](#@aws-cdk/aws-ec2.IVpc)

The VPC to use for creating the Minecraft server's.

---

##### `additionalSecurityGroups`<sup>Optional</sup> <a name="cdk-minecraft-server.MinecraftServerProps.property.additionalSecurityGroups" id="cdkminecraftserverminecraftserverpropspropertyadditionalsecuritygroups"></a>

```typescript
public readonly additionalSecurityGroups: ISecurityGroup[];
```

- *Type:* [`@aws-cdk/aws-ec2.ISecurityGroup`](#@aws-cdk/aws-ec2.ISecurityGroup)[]

Additional security groups.

---

##### `customUserDataScript`<sup>Optional</sup> <a name="cdk-minecraft-server.MinecraftServerProps.property.customUserDataScript" id="cdkminecraftserverminecraftserverpropspropertycustomuserdatascript"></a>

```typescript
public readonly customUserDataScript: UserData;
```

- *Type:* [`@aws-cdk/aws-ec2.UserData`](#@aws-cdk/aws-ec2.UserData)

Custom user data script.

---

##### `ec2InstanceClass`<sup>Optional</sup> <a name="cdk-minecraft-server.MinecraftServerProps.property.ec2InstanceClass" id="cdkminecraftserverminecraftserverpropspropertyec2instanceclass"></a>

```typescript
public readonly ec2InstanceClass: InstanceClass;
```

- *Type:* [`@aws-cdk/aws-ec2.InstanceClass`](#@aws-cdk/aws-ec2.InstanceClass)
- *Default:* c5a

The ec2 instance type for hosting the minecraft server.

---

##### `ec2InstanceName`<sup>Optional</sup> <a name="cdk-minecraft-server.MinecraftServerProps.property.ec2InstanceName" id="cdkminecraftserverminecraftserverpropspropertyec2instancename"></a>

```typescript
public readonly ec2InstanceName: string;
```

- *Type:* `string`
- *Default:* the Minecraft server name will be used

Name to be given to EC2 instance where minecraft server will run.

---

##### `ec2InstanceSize`<sup>Optional</sup> <a name="cdk-minecraft-server.MinecraftServerProps.property.ec2InstanceSize" id="cdkminecraftserverminecraftserverpropspropertyec2instancesize"></a>

```typescript
public readonly ec2InstanceSize: InstanceSize;
```

- *Type:* [`@aws-cdk/aws-ec2.InstanceSize`](#@aws-cdk/aws-ec2.InstanceSize)
- *Default:* large

The ec2 instance size for hosting the minecraft server.

---

##### `serverInstallScript`<sup>Optional</sup> <a name="cdk-minecraft-server.MinecraftServerProps.property.serverInstallScript" id="cdkminecraftserverminecraftserverpropspropertyserverinstallscript"></a>

```typescript
public readonly serverInstallScript: string;
```

- *Type:* `string`

Path to server install script.

If this is not set then the serverZipPath must be!

---

##### `serverManagementAPI`<sup>Optional</sup> <a name="cdk-minecraft-server.MinecraftServerProps.property.serverManagementAPI" id="cdkminecraftserverminecraftserverpropspropertyservermanagementapi"></a>

```typescript
public readonly serverManagementAPI: boolean;
```

- *Type:* `boolean`
- *Default:* true

Whether or not the server management API should be created as part of the deployment.

The server api will allow you to do things such as start and stop your ec2 instance

---

##### `serverZipPath`<sup>Optional</sup> <a name="cdk-minecraft-server.MinecraftServerProps.property.serverZipPath" id="cdkminecraftserverminecraftserverpropspropertyserverzippath"></a>

```typescript
public readonly serverZipPath: string;
```

- *Type:* `string`

Path to zip folder for Minecraft server can be in s3 or local If this is not set then the serverInstallScript must be!

---

### ServerInstanceProps <a name="cdk-minecraft-server.ServerInstanceProps" id="cdkminecraftserverserverinstanceprops"></a>

#### Initializer <a name="[object Object].Initializer" id="object-objectinitializer"></a>

```typescript
import { ServerInstanceProps } from 'cdk-minecraft-server'

const serverInstanceProps: ServerInstanceProps = { ... }
```

#### Properties <a name="Properties" id="properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| [`ec2InstanceName`](#cdkminecraftserverserverinstancepropspropertyec2instancename)<span title="Required">*</span> | `string` | *No description.* |
| [`gameServerName`](#cdkminecraftserverserverinstancepropspropertygameservername)<span title="Required">*</span> | `string` | *No description.* |
| [`vpc`](#cdkminecraftserverserverinstancepropspropertyvpc)<span title="Required">*</span> | [`@aws-cdk/aws-ec2.IVpc`](#@aws-cdk/aws-ec2.IVpc) | *No description.* |
| [`additionalSecurityGroups`](#cdkminecraftserverserverinstancepropspropertyadditionalsecuritygroups) | [`@aws-cdk/aws-ec2.ISecurityGroup`](#@aws-cdk/aws-ec2.ISecurityGroup)[] | *No description.* |
| [`customUserDataScript`](#cdkminecraftserverserverinstancepropspropertycustomuserdatascript) | [`@aws-cdk/aws-ec2.UserData`](#@aws-cdk/aws-ec2.UserData) | *No description.* |
| [`ec2InstanceClass`](#cdkminecraftserverserverinstancepropspropertyec2instanceclass) | [`@aws-cdk/aws-ec2.InstanceClass`](#@aws-cdk/aws-ec2.InstanceClass) | *No description.* |
| [`ec2InstanceSize`](#cdkminecraftserverserverinstancepropspropertyec2instancesize) | [`@aws-cdk/aws-ec2.InstanceSize`](#@aws-cdk/aws-ec2.InstanceSize) | *No description.* |
| [`serverInstallScript`](#cdkminecraftserverserverinstancepropspropertyserverinstallscript) | `string` | *No description.* |
| [`serverZipPath`](#cdkminecraftserverserverinstancepropspropertyserverzippath) | `string` | *No description.* |

---

##### `ec2InstanceName`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstanceProps.property.ec2InstanceName" id="cdkminecraftserverserverinstancepropspropertyec2instancename"></a>

```typescript
public readonly ec2InstanceName: string;
```

- *Type:* `string`

---

##### `gameServerName`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstanceProps.property.gameServerName" id="cdkminecraftserverserverinstancepropspropertygameservername"></a>

```typescript
public readonly gameServerName: string;
```

- *Type:* `string`

---

##### `vpc`<sup>Required</sup> <a name="cdk-minecraft-server.ServerInstanceProps.property.vpc" id="cdkminecraftserverserverinstancepropspropertyvpc"></a>

```typescript
public readonly vpc: IVpc;
```

- *Type:* [`@aws-cdk/aws-ec2.IVpc`](#@aws-cdk/aws-ec2.IVpc)

---

##### `additionalSecurityGroups`<sup>Optional</sup> <a name="cdk-minecraft-server.ServerInstanceProps.property.additionalSecurityGroups" id="cdkminecraftserverserverinstancepropspropertyadditionalsecuritygroups"></a>

```typescript
public readonly additionalSecurityGroups: ISecurityGroup[];
```

- *Type:* [`@aws-cdk/aws-ec2.ISecurityGroup`](#@aws-cdk/aws-ec2.ISecurityGroup)[]

---

##### `customUserDataScript`<sup>Optional</sup> <a name="cdk-minecraft-server.ServerInstanceProps.property.customUserDataScript" id="cdkminecraftserverserverinstancepropspropertycustomuserdatascript"></a>

```typescript
public readonly customUserDataScript: UserData;
```

- *Type:* [`@aws-cdk/aws-ec2.UserData`](#@aws-cdk/aws-ec2.UserData)

---

##### `ec2InstanceClass`<sup>Optional</sup> <a name="cdk-minecraft-server.ServerInstanceProps.property.ec2InstanceClass" id="cdkminecraftserverserverinstancepropspropertyec2instanceclass"></a>

```typescript
public readonly ec2InstanceClass: InstanceClass;
```

- *Type:* [`@aws-cdk/aws-ec2.InstanceClass`](#@aws-cdk/aws-ec2.InstanceClass)

---

##### `ec2InstanceSize`<sup>Optional</sup> <a name="cdk-minecraft-server.ServerInstanceProps.property.ec2InstanceSize" id="cdkminecraftserverserverinstancepropspropertyec2instancesize"></a>

```typescript
public readonly ec2InstanceSize: InstanceSize;
```

- *Type:* [`@aws-cdk/aws-ec2.InstanceSize`](#@aws-cdk/aws-ec2.InstanceSize)

---

##### `serverInstallScript`<sup>Optional</sup> <a name="cdk-minecraft-server.ServerInstanceProps.property.serverInstallScript" id="cdkminecraftserverserverinstancepropspropertyserverinstallscript"></a>

```typescript
public readonly serverInstallScript: string;
```

- *Type:* `string`

---

##### `serverZipPath`<sup>Optional</sup> <a name="cdk-minecraft-server.ServerInstanceProps.property.serverZipPath" id="cdkminecraftserverserverinstancepropspropertyserverzippath"></a>

```typescript
public readonly serverZipPath: string;
```

- *Type:* `string`

---



