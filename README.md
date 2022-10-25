# terraform_multi_region_multi_environment_vpc
This repository has a terraform code for VPC in multiple regions and for multiple environments

![images-1](https://user-images.githubusercontent.com/85028974/197718370-04386589-35f5-4589-90bc-bbbb010f52cb.png)
# VPC
* Amazon Virtual Private Cloud (Amazon VPC) enables you to launch AWS resources into a virtual network that you've defined. This virtual network closely resembles a traditional network that you'd operate in your own data center, with the benefits of using the scalable infrastructure of AWS.
* To create VPC :

1. Create a new VPC with the required CIDR blocks and subnets [aws_vpc Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)
Create Route Tables and Subnet Associations aws_route Documentation
Create Internet Gateway and NAT Gateway and associated them with public and private subnets NAT Gateway Documentation and Internet Gateway Documentation
