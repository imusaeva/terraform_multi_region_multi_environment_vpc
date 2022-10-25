# terraform_multi_region_multi_environment_vpc
This repository has a terraform code for VPC in multiple regions and for multiple environments

![images-1](https://user-images.githubusercontent.com/85028974/197718370-04386589-35f5-4589-90bc-bbbb010f52cb.png)
# VPC
* Amazon Virtual Private Cloud (Amazon VPC) enables you to launch AWS resources into a virtual network that you've defined. This virtual network closely resembles a traditional network that you'd operate in your own data center, with the benefits of using the scalable infrastructure of AWS.

# Steps to create VPC :

* Create a new VPC with the required CIDR blocks and subnets [aws_vpc Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)
* Create Route Tables and Subnet Associations [aws_route Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table)
* Create Internet Gateway and NAT Gateway and associated them with public and private subnets [NAT Gateway Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) and [Internet Gateway Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway)

We will create VPC in us-east-1, and us-west-2 regions.
And also create Dev and Qa versions using File or Folder Structures.

# File structure 
Manage all environments in one working directory which makes it easier to maintain your environments. 
We have to create tfvars files with variables for environment and run terraform init command with a proper flag , example : 
```
terraform init -var-file=dev.tfvars
```
# Folder structure
We have to have different working directories for each environment (with all the configuration files for each environment). 
And run 
```
terraform init
```
after modification the environment in each working directory. You technically have to go and do copy/paste to every other environment after changes. You have to be extra careful with file syntax because single mistake will cause an error.
