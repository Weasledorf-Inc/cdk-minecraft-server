import * as fs from 'fs';
import * as path from 'path';
import { DockerImageAsset } from '@aws-cdk/aws-ecr-assets';
import { AssetStaging, BundlingOutput, DockerImage } from '@aws-cdk/core';
import { Construct } from 'constructs';

export interface ServerImageFromZipProps {
  readonly serverZipPath: string;
}

export interface ServerImageFromScriptProps {
  readonly serverInstallScript: string;
}

export class ServerImageFactory {
  public readonly scope: Construct;

  constructor(scope: Construct) {
    this.scope = scope;
  }

  buildFromServerInstallScript(props: ServerImageFromScriptProps): DockerImageAsset {
    // TODO: Change this to work with script
    const scriptDir = path.parse(props.serverInstallScript).dir;
    const installScriptName = path.parse(props.serverInstallScript).base;

    const serverAsset = new AssetStaging(this.scope, 'docker-file-asset', {
      sourcePath: scriptDir,
      bundling: {
        image: DockerImage.fromRegistry('openjdk:8'),
        command: [
          'sh', '-c', 'cp * /asset-output',
        ],
        outputType: BundlingOutput.NOT_ARCHIVED,
      },
    });

    fs.writeFileSync(`${serverAsset.absoluteStagedPath}/Dockerfile`, `
    FROM openjdk:8
    RUN ls -ltra
    COPY ${installScriptName} /app/
    WORKDIR /app
    RUN ./${installScriptName} --auto && chmod +x start.sh && echo eula=true > eula.txt
    RUN cat eula.txt
    CMD  ./start.sh
        `);

    return new DockerImageAsset(this.scope, 'docker-image', {
      directory: serverAsset.absoluteStagedPath,
    });
  }

  buildFromServerZipPath(props: ServerImageFromZipProps): DockerImageAsset {
    const serverZipDirectory = path.parse(props.serverZipPath).dir;
    const serverZipFile = path.parse(props.serverZipPath).base;

    const serverAsset = new AssetStaging(this.scope, 'docker-file-asset', {
      sourcePath: serverZipDirectory,
      bundling: {
        image: DockerImage.fromRegistry('openjdk:8'),
        command: [
          'sh', '-c', 'cp * /asset-output',
        ],
        outputType: BundlingOutput.NOT_ARCHIVED,
      },
    });

    fs.writeFileSync(`${serverAsset.absoluteStagedPath}/Dockerfile`, `
FROM openjdk:8
RUN ls -ltra
COPY ${serverZipFile} /app/modpack.zip
WORKDIR /app
RUN unzip modpack.zip && chmod +x ServerStart.sh && echo eula=true > eula.txt
RUN cat eula.txt
CMD  ./ServerStart.sh
    `);

    return new DockerImageAsset(this.scope, 'docker-image', {
      directory: serverAsset.absoluteStagedPath,
    });

  }
}