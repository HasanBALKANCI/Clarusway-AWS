# AWS CLI
# Guile - 05_31_2022

# References
# https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html
# https://awscli.amazonaws.com/v2/documentation/api/latest/index.html
# https://aws.amazon.com/blogs/compute/query-for-the-latest-amazon-linux-ami-ids-using-aws-systems-manager-parameter-store/

<<comment
How to install CLI for MAC
1.  curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
2.    sudo installer -pkg ./AWSCLIV2.pkg -target /
3. To verify that the shell can find and run the aws command in your $PATH, use the following commands.
which aws
aws --version
comment

# Installation

# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html


# Win:
# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html


# Mac:
# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
# https://graspingtech.com/install-and-configure-aws-cli/


# Linux:
# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip  #install "unzip" if not installed
sudo ./aws/install


# Configuration

aws configure

cat .aws/config
cat .aws/credentials

aws configure --profile user1

export AWS_PROFILE=user1
export AWS_PROFILE=default

aws configure list-profiles

aws sts get-caller-identity # who am i

# IAM
aws iam list-users

aws iam create-user --user-name aws-cli-user

aws iam delete-user --user-name aws-cli-user


# S3
aws s3 ls

aws s3 mb s3://guile-cli-bucket

aws s3 cp in-class.yaml s3://guile-cli-bucket

aws s3 ls s3://guile-cli-bucket

aws s3 rm s3://guile-cli-bucket/in-class.yaml

aws s3 rb s3://guile-cli-bucket


# EC2
aws ec2 describe-instances

aws ec2 run-instances \
   --image-id ami-0022f774911c1d690 \
   --count 1 \
   --instance-type t2.micro \
   --key-name KEY_NAME_HERE # put your key name

aws ec2 describe-instances \
   --filters "Name = key-name, Values = KEY_NAME_HERE" # put your key name

aws ec2 describe-instances --query "Reservations[].Instances[].PublicIpAddress[]"

aws ec2 describe-instances \
   --filters "Name = key-name, Values = KEY_NAME_HERE" --query "Reservations[].Instances[].PublicIpAddress[]" # put your key name

aws ec2 describe-instances \
   --filters "Name = instance-type, Values = t2.micro" --query "Reservations[].Instances[].InstanceId[]"

aws ec2 stop-instances --instance-ids INSTANCE_ID_HERE # put your instance id

aws ec2 terminate-instances --instance-ids INSTANCE_ID_HERE # put your instance id

# Working with the latest Amazon Linux AMI

aws ssm get-parameters --names /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2 --region us-east-1

aws ssm get-parameters --names /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2 --query 'Parameters[0].[Value]' --output text

aws ec2 run-instances \
   --image-id $(aws ssm get-parameters --names /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2 --query 
'Parameters[0].[Value]' --output text) \
   --count 1 \
   --instance-type t2.micro

# Update AWS CLI Version 1 on Amazon Linux (comes default) to Version 2

# Remove AWS CLI Version 1
sudo yum remove awscli -y # pip uninstall awscli/pip3 uninstall awscli might also work depending on the image

# Install AWS CLI Version 2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip  #install "unzip" if not installed
sudo ./aws/install

# Update the path accordingly if needed
export PATH=$PATH:/usr/local/bin/aws

Note to Self:
1. CLI last version is v2
2. If you have v1 and you want to install v2, firstly you should uninstall v1.
3. uninstall CLI v1
sudo rm -rf /usr/local/aws
sudo rm /usr/local/bin/aws
or
pip3 uninstall awscli
4. Ayni anda iki farkli hesapla kullanmamiz gerektiginde, 
aws ye baglanmamiz gerekiyor profiller kullanilir.
   aws configure --profile hasan-company
5. Yeni profili komutla kullanmak icin
   aws s3 ls --profile hasan-company
6. Who am i ?
   aws sts get-caller-identity
7. commands:
   aws help
   aws s3 help
   aws iam list-users
8. CLI documentation
https://awscli.amazonaws.com/v2/documentation/api/latest/index.html

9. CLI cheetsheet 
https://aws.plainenglish.io/aws-cli-commands-cheatsheet-49fab131b35d

10. 
