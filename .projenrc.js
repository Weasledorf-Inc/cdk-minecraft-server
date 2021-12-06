const { awscdk } = require('projen');

// const cdkAlphaVersions = '2.0.0-alpha.11';
// const cdkAlphaDependencies = [
//   '@aws-cdk/aws-apigatewayv2-alpha',
//   '@aws-cdk/aws-apigatewayv2-integrations-alpha',
// ].map(x => `${x}@${cdkAlphaVersions}`);

const project = new awscdk.AwsCdkConstructLibrary({
  author: 'Hasan Abu-Rayyan',
  authorAddress: 'hasanaburayyan21@gmail.com',
  cdkVersion: '1.34.0',
  defaultReleaseBranch: 'main',
  name: 'minecraft-server-construct',
  repositoryUrl: 'https://github.com/hasanaburayyan/cdk-minecraft-server.git',
  cdkDependencies: [
    '@aws-cdk/core',
    '@aws-cdk/aws-ec2',
    '@aws-cdk/aws-s3',
    '@aws-cdk/aws-s3-deployment',
    '@aws-cdk/aws-apigatewayv2',
    '@aws-cdk/aws-apigatewayv2-integrations',
    '@aws-cdk/aws-lambda-python',
    '@aws-cdk/aws-lambda-nodejs',
    '@aws-cdk/aws-iam',
    '@aws-cdk/aws-ecr',
    '@aws-cdk/aws-ecr-assets',
  ],
  deps: [
    // ...cdkAlphaDependencies,
    '@aws-sdk/client-ec2',
    'cdk-ecr-deployment',
  ],
  bundledDeps: [
    '@aws-sdk/client-ec2',
  ],
  devDeps: [
    '@types/aws-lambda',
  ],
});
project.synth();