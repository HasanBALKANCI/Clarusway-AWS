sed -i "s/ec2-private_ip/$(grep PrivateIpAddress info.json | head -n1 | cut -d'"' -f4)/" terraform.tf
# sed -i --> This -i change contents of file (terraform.tf)
# if -i don't be used file's content can't be changed, only output is changed.
# when you use other command in any command you indicate the command by $()