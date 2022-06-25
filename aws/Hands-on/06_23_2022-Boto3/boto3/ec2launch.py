import boto3
ec2 = boto3.resource('ec2')

# create a new EC2 instance
instances = ec2.create_instances(
     ImageId='ami-052efd3df9dad4825',
     MinCount=1,
     MaxCount=1,
     InstanceType='t2.micro',
     KeyName='your keypair without .pem'
 )
