import * as path from 'path';
import * as apigatewayV2 from '@aws-cdk/aws-apigatewayv2';
import * as integrations from '@aws-cdk/aws-apigatewayv2-integrations';
import * as iam from '@aws-cdk/aws-iam';
import * as lambdaNode from '@aws-cdk/aws-lambda-nodejs';
import * as lamdbaPython from '@aws-cdk/aws-lambda-python';
import { Construct, Stack } from '@aws-cdk/core';
import { ServerInstance } from './server-instance-constuct';

export interface ManagementAPIProps {
  readonly apiName: string;
  readonly serverInstance: ServerInstance;
}

export class ManagementAPI extends Construct {
  public readonly managementAPIGateway: apigatewayV2.HttpApi;
  public readonly statusLambda: lamdbaPython.PythonFunction;
  public readonly startServerLambda: lamdbaPython.PythonFunction;
  public readonly shutdownServerLambda: lamdbaPython.PythonFunction;

  constructor(scope: Construct, id: string, props: ManagementAPIProps) {
    super(scope, id);

    this.managementAPIGateway = new apigatewayV2.HttpApi(this, 'management-api', {
      apiName: props.apiName,
    });

    const commonEnvironmentVariables = {
      INSTANCE_ID: props.serverInstance.ec2Instance.instanceId,
      REGION: Stack.of(this).region,
    };

    this.statusLambda = new lambdaNode.NodejsFunction(this, 'get-server-status', {
      entry: path.join(__dirname, './handlers/get_server_status.ts'),
      environment: { ...commonEnvironmentVariables },
    });

    this.shutdownServerLambda = new lambdaNode.NodejsFunction(this, 'stop-server-lambda', {
      entry: path.join(__dirname, './handlers/stop_server.ts'),
      environment: { ...commonEnvironmentVariables },
    });

    this.startServerLambda = new lambdaNode.NodejsFunction(this, 'start-server-lambda', {
      entry: path.join(__dirname, './handlers/start_server.ts'),
      environment: { ...commonEnvironmentVariables },
    });

    this.managementAPIGateway.addRoutes({
      path: '/start',
      methods: [apigatewayV2.HttpMethod.GET],
      integration: new integrations.LambdaProxyIntegration({
        handler: this.startServerLambda,
      }),
    });

    this.managementAPIGateway.addRoutes({
      path: '/stop',
      methods: [apigatewayV2.HttpMethod.GET],
      integration: new integrations.LambdaProxyIntegration({
        handler: this.shutdownServerLambda,
      }),
    });

    this.managementAPIGateway.addRoutes({
      path: '/status',
      methods: [apigatewayV2.HttpMethod.GET],
      integration: new integrations.LambdaProxyIntegration({
        handler: this.statusLambda,
      }),
    });

    this.statusLambda.role?.addManagedPolicy(iam.ManagedPolicy.fromAwsManagedPolicyName('AmazonEC2FullAccess'));
    this.startServerLambda.role?.addManagedPolicy(iam.ManagedPolicy.fromAwsManagedPolicyName('AmazonEC2FullAccess'));
    this.shutdownServerLambda.role?.addManagedPolicy(iam.ManagedPolicy.fromAwsManagedPolicyName('AmazonEC2FullAccess'));
  }
}
