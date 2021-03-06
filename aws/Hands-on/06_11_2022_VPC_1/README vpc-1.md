# Hands-on VPC-01 : Configuring of VPC

Purpose of the this hands-on training is to create VPC and configure VPC with components.

## Learning Outcomes

At the end of the this hands-on training, students will be able to;

- learn how to create VPC,

- learn how to create subnet,

- learn how to set route tables as public and private,


## Outline

- Part 1 - Creating VPC, Subnet and Subnet associations



## Part 1 - Creating VPC, Subnet and Subnet associations

STEP 1: Create VPC

- First, go to the VPC and select Your VPC section from the left-hand menu, click create VPC.

- `Resources to create` :

```text
VPC only 

Note: After you  create VPC and all other components, show how you can do it easly via the option of "VPC, subnets, etc."
```

- create a vpc named "clarus-vpc-a" with `10.7.0.0/16` CIDR
    - no ipv6 CIDR block
    - tenancy: default

- click create

- explain the vpc descriptions

- enable DNS hostnames for the vpc 'clarus-vpc-a'

  - select 'clarus-vpc-a' on VPC console ----> Actions ----> Edit DNS hostnames
  - Click enable flag
  - Click save 

STEP 2: Create an internet gateway named 'clarus-igw'

- Go to the Internet Gateways from left hand menu

- Create Internet Gateway
   - Name Tag "clarus-igw" 
   - Click create button

-  attach the internet gateway 'clarus-igw' to the vpc 'clarus-vpc-a'
  - Actions ---> attach to VPC
  - Select VPC named "clarus-vpc-a"
  - Push "Attach Internet gateway"

STEP 3 : Configuring Route Table

- Go to the Route Tables from left hand menu

- rename the route table of the vpc 'clarus-vpc-a' as 'clarus-default-rt'

- select Routes on the sub-section

- click edit routes

- click add route

- add a route
    - destination ------> 0.0.0.0/0 (any network, any host)
    - As target;
      - Select Internet Gateway
      - Select 'clarus-igw'
      - save routes

- explain routes in the clarus-default-rt

STEP 4: Create Subnets
- Go to the Subnets from left hand menu
- Push create subnet button

1. 
Name tag          :clarus-az1a-public-subnet
VPC               :clarus-vpc-a
Availability Zone :us-east-1a
IPv4 CIDR block   :10.7.1.0/24

2. 
Name tag          :clarus-az1a-private-subnet
VPC               :clarus-vpc-a
Availability Zone :us-east-1a
IPv4 CIDR block   :10.7.2.0/24

3. 
Name tag          :clarus-az1b-public-subnet
VPC               :clarus-vpc-a
Availability Zone :us-east-1b
IPv4 CIDR block   :10.7.4.0/24

4. 
Name tag          :clarus-az1b-private-subnet
VPC               :clarus-vpc-a
Availability Zone :us-east-1b
IPv4 CIDR block   :10.7.5.0/24

5. 
Name tag          :clarus-az1c-public-subnet
VPC               :clarus-vpc-a
Availability Zone :us-east-1c
IPv4 CIDR block   :10.7.7.0/24

6. 
Name tag          :clarus-az1c-private-subnet
VPC               :clarus-vpc-a
Availability Zone :us-east-1c
IPv4 CIDR block   :10.7.8.0/24

- explain the subnet descriptions and reserved ips (why 251 instead of 256)

STEP 5: Route Tables

- Go to the Route Tables from left hand menu

- Select 'clarus-default-rt' and click the Subnet Association from sub-section

- show the default subnet associations on the route table 
clarus-default-rt (internet access is available even on private subnets)
- push the create route table button

- create a private route table (not allowing access to the internet) 
  - name: 'clarus-private-rt'
  - VPC : 'clarus-vpc-a'
  - click create button

- show the routes in the route table clarus-private-rt,

- click Subnet association button and show the route table clarus-private-rt with private subnets

- Click Edit subnet association
- select private subnets;
  - clarus-az1a-private-subnet
  - clarus-az1b-private-subnet
  - clarus-az1c-private-subnet
  - and click save

- create a public route table (allowing access to the internet) 

- push the create route table button
  - name: 'clarus-public-rt'
  - VPC : 'clarus-vpc-a'
  - click create button

- show the routes in the route table clarus-public-rt,

- click Subnet association button and show the route table 

-Show the default route table subnet association . There are only 3 subnet implicitly.

- clarus-public-rt with public subnets

- Click Edit subnet association

- select public subnets;
  - clarus-az1a-public-subnet
  - clarus-az1b-public-subnet
  - clarus-az1c-public-subnet
  - and click save

- select Routes on the sub-section of clarus-public-rt

- click edit routes

- click add route

- add a route
    - destination ------> 0.0.0.0/0 (any network, any host)
    - As target;
      - Select Internet Gateway
      - Select 'clarus-igw'
      - save routes    
      
STEP 6: enable Auto-Assign Public IPv4 Address for public subnets

- Go to the Subnets from left hand menu

  - Select 'clarus-az1a-public-subnet' subnet ---> Action ---> Modify auto-assign IP settings  ---> select 'Enable auto-assign public IPv4 address' ---> Save

  - Select 'clarus-az1b-public-subnet' subnet ---> Action ---> Modify auto-assign
  IP settings  ---> select 'Enable auto-assign public IPv4 address' ---> Save

  - Select 'clarus-az1c-public-subnet' subnet ---> Action ---> Modify auto-assign
  IP settings  ---> select 'Enable auto-assign public IPv4 address' ---> Save

- Create two instances . One is in the Private and the other one is in Public subnet. Show the public and private IPs of instances. 

- Compare the IP of instance and Subnet CIDR block.

Note to self:
1. VPC stands for virtual private cloud. VPC is a logically isolated area of the AWS cloud where you can launch AWS resources in a virtual network that you define.

2. A VPC can span multiple availability zones in the region.
3. VPC is a region base servis in AWS.
4. Network ACLs are assigned to Subnets, While Security Groups ara assigned to RDS or EC2 instances.
5. Private and Public Subnets located in the same VPC can send traffic to each other.
6. Route Table contains a set of rules that are used to determine where traffic
from your subnet or gateway is directed.
7. VPC can contain:
  Availabilty Zones, 
  Subnet(Private or Public),
  CIDR (Classless Inter Domain ) :
    According to standards set forth in Internet Engineering Task Force (IETF) document RFC-1918, the following IPv4 address ranges are reserved by the IANA for private internets, and are not publicly routable on the global internet:

    10.0.0.0/8 IP addresses: 10.0.0.0 ??? 10.255.255.255
    172.16.0.0/12 IP addresses: 172.16.0.0 ??? 172.31.255.255
    192.168.0.0/16 IP addresses: 192.168.0.0 ??? 192.168.255.255

    When creating CIDR in generally we use the formula of 2^n - 2, but in AWS we use 2^n -5. 

  Internet Gateway is a VPC component that provides communication between resources in your VPC and the internet.

  Route Table:
    Route Table is created automatically when VPC is launched.
    You should associate route table with subnets.
    Route table make subnets be private or public by using route table rules.
     
  Network Acces Control List:
    it allows both ALLOWS and DENY
    By default, all the rules are ALLOWED
    Newly created by user --> By default, all the rules are DENEIED
    It is stateless (inbound and outbound must be controlled)
    It is subnet-based.
    Subnet can associate with only one Network ACL

8. Each region; it comes with one default VPC and we can also create 5 more VPCs for each region. This is a soft limit of 5 and if we need more than 5 VPCs, we can request it from AWS.

9. VPCs are associated with a single region. You cannot span a VPC across regions.

10. The machines we place in the subnets called Private have the opportunity to communicate only through VPC. In this way, we protect our resources against unauthorized access and ensure network security.

11. VPN Gateway :  this internet connection can be made as a direct connection between its own company network infrastructure and this VPC. This system is also called a VPN Gateway.

12. In short, VPC can connect to the outside world in two basic ways, either VPN Gateway or Internet Gateway.

13. Subnet Network ACLs are firewall of subnets. Network ACLs are subnet-based security components. You can associate multiple subnets with a Network ACLs. However, a subnet can be associated with the single Network ACL.

14. A Security Group is a virtual Firewall of Instance. When you launch an instance in a VPC, you can associate with five security groups to one instance.






