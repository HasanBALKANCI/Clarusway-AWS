* Simple, scalable, fully managed Elastic NFS (Network File System) file system.

* Multiple or single EC2 can call the data in EFS. 
  But in EBS only related EC2 call the data.

* ~/efs/clarusway/hasan (file based)

* It increases and decreases the storage capacity automatically as you add and delete files. (like a baloon)

* There is no fee or setup cost

* unlike EBS (except Nitro-based instances in the same AZ), multiple Amazon EC2 instance (linux only) even in different AZs
can be attached Amazon EFS file system at the same time.

* Mount target must be created in a subnet in ordet to EC2 connect to EFS.

* Storage clases
  - Standard (regional)
    . EFS Standart
    . Standart - IA
  - One Zone
    . EFS One Zone
    . EFS One Zone - IA

* Cost Optimized : S3 > EBS >EFS
 speed : EBS, EFS > S3
 EC2 mount : S3   NO
             EBS  SINGLE
             EFS  MULTIPLE

* STORAGE CAPACITY : S3,EFS = ∞ vs. EBS = 16 TB

