The notes folliwing are created in order to prepare certification exam. So they are anly summarizing.

* You can create ALIAS for the root/naked domain such as "amazom.com."

* There are two types of hosted zones. These are:
 - Public Hosted Zones and Private Hosted Zones

* You can transfer existing domains from other registrars to Route 53 or vice versa.

* The key function of  Route 53 are:
  - Domain Registration
  - Health Check
  - DNS Routing

* Unlike Private Hosted Zones, Public Hosted Zones are created automatically when the domain name is registered.

* Amazon Route 53 currently supports 13 DNS record types 

* The type of Amazon Route 53 Health Check are :
  - CloudFront HC
  - Calculated HC
  - Endpoint HC

* Type A records:
  - It is an important record type that we can match with the domain or subdomain to IPs.
  - You can also assign different sub-domains to the same IP via A records.

* DNS Record Sets are information used to map the domain names to an IP address in AWS Route 53.

* NS Record is a record that contains a list of servers authorized to host Name Server.

* When we register a domain name or create a Hosted Zone, 2 records are created by default. These records are :
  - SOA
  - NS

* HEalth Checking is a function that checks whether our servers running with Route 53 are working properly.

* After you register your domain name, Route 53 routes the web traffic of your domain with the help of the DNS REcords and DNS Policies.

* "A Record" can only take an IP address as a Value.

* TTL (time to live) is a parameter that determines how long IPS will cache the values for a record before submitting another request.

* You don't need to stick to domain name while naming your Private Hosted Zone.

* When you register a new domain name, AWS automatically creates a Public Hosted Zones with the same name of your domain.

* For Health Checking, the default Request Interval is 30 seconds. If you select 10 Seconds Request Interval option, AWS will charge extra money.

* What is an Alias Records and what is the difference between Alias Record and CNAME Record.
  - This is a DNS feature of Route 53 only. It is basically the same as the CNAME record, but instead of the IP address, we do DNS name mapping of AWS resources like AWS Elastic Load Balancers, Amazon Cloud Front, AWS Elastic Beanstalk, or Amazon S3 Buckets. While CNAME records cannot be used for a root or naked domain, we can use Alias record for root or naked domain.

* What is TTL?
  - TTL is a parameter that determines how long IPS (Internet Service Provider) will cache (store) the values for a record before submitting another request to Route 53 to get the current values for that record.

* What are the Routing Policies that Route 53 offers?
  - Simple Routing Policy
  - Failover Routing Policy
  - Weighted Routing Policy
  - Latency Routing Policy
  - Geolocation Routing Policy
  - Geoproximity Routing Policy
  - Multivalue Answer Routing Policy
  - IP Base