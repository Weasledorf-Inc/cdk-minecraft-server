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

    response = client.stop_instances(
        InstanceIds = [INSTANCE_ID],
    )
    
    return {
        'statusCode': 200,
        'body': json.dumps(response)
    }
