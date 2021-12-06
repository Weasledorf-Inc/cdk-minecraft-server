import boto3
import json
import os

INSTANCE_ID = os.environ['INSTANCE_ID']

def lambda_handler(event, context):
    client = boto3.client('ec2')

    queryString = event["queryStringParameters"] if "queryStringParameters" in event else ""
    password = queryString["password"] if "password" in queryString else ""

    if password != "weaseldorf":
        return {
            'statusCode': 403,
            'body': 'Unauthorized'
        }

    response = client.describe_instances(
        InstanceIds = [INSTANCE_ID],
    )

    print(response["Reservations"][0]["Instances"])
    return {
        'statusCode': 200,
        'body': json.dumps(response["Reservations"][0]["Instances"][0]["State"]["Name"], indent=4, sort_keys=True, default=str)
    }