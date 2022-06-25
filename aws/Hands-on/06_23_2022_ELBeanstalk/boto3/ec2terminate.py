import boto3
ec2 = boto3.resource('ec2')
ec2.Instance('i-0f03993de0283578d').terminate() # your InstanceID