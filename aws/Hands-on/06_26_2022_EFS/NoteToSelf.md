* Simple, scalable, fully managed Elastic NFS (Network File System) file system.

* Multiple or single EC2 can call the data in EFS. 
  But in EBS only related EC2 call the data.

* ~/efs/clarusway/hasan (file based)

* It increases and decreases the storage capacity automatically as you add and delete files. (like a baloon)

* There is no fee or setup cost

* unlike EBS (except Nitro-based instances in the same AZ), multiple Amazon EC2 instance (linux only) even in different AZs
can be attached Amazon EFS file system at the same time.

* Mount target must be created in a subnet in ordet to EC2 connect to EFS.

* 
