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
    // 'aws-cdk-lib',
    '@aws-cdk/core',
    '@aws-cdk/aws-ec2',
  ],
  deps: [
    // ...cdkAlphaDependencies,
  ],
});
project.synth();