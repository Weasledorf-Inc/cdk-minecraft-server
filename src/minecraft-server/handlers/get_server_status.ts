import * as ec2Client from '@aws-sdk/client-ec2';

export async function handler(event: AWSLambda.APIGatewayEvent, _context: any) {
  const instanceId = process.env.INSTANCE_ID;
  const region = process.env.REGION;
  console.log('Event Recieved', { event });

  if (undefined == instanceId || undefined == region) {
    console.log('Missing ID or Region:', instanceId, region);
    return {
      statusCode: 500,
      body: `Please provide both instance id and region: instanceID: ${instanceId}, region: ${region}`,
    };
  }

  let password = '';

  if (event.queryStringParameters) {
    password = event.queryStringParameters.password ?? 'NO PASSWORD PROVIDED';
  }

  if ('weaseldorf' !== password) {
    return {
      statusCode: 403,
      body: 'Unathorized!',
    };
  }

  try {
    const client = new ec2Client.EC2Client({ region: region });
    const describeInstancesInput: ec2Client.DescribeInstancesCommandInput = {
      InstanceIds: [
        instanceId,
      ],
    };
    console.log('Describe Input: ', describeInstancesInput);
    const describeCommand = new ec2Client.DescribeInstancesCommand(describeInstancesInput);
    const results = await client.send(describeCommand);

    console.log('Results: ', { results });

    return {
      statusCode: 200,
      body: results,
    };

  } catch (e) {
    console.log('ERROR!', e);
    return {
      statusCode: 500,
      body: e,
    };
  }

}