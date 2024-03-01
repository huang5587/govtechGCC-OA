# govtechGCC-OA

## Overview

I have used Terraform to write an automation to produce two AWS Ec2 instances, each with a static nginx server. The instances are accessible by entering the load balancer DNS URL into a web-browser. The load balancer is configured such that a different AWS instance will be served on subsequent visits to the DNS url. A video demonstration is show below.

 Additionally, the script will automatically generate and use public and private keys for creating and connecting to the Ec2 instances. For better readability and modularity, I have seperated files according to function when possible. 

## Video Demo
https://github.com/huang5587/govtechGCC-OA/assets/65338691/4bc5e6c1-95f9-4181-8384-952a8a3b016b

## Set-up and Usage

To run the automation, Terraform is required. It can be installed on Mac with homebrew with the following command:

`brew install terraform`

The official installation instructions can be found here: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

Before running, you must replace the AWS credentials found in `provider.tf` with your own. 

Finally, to run the automation enter the following from the root directory of this repositry:

```
terraform init

terraform plan

terraform apply
```
