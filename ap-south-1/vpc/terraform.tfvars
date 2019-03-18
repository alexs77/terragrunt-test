terragrunt = {
  terraform {
    source = "git::git@github.com:terraform-aws-modules/terraform-aws-vpc.git"
  }

  include = {
    path = "${find_in_parent_folders()}"
  }
}

# A list of availability zones in the region
# type: list
azs = ["ap-south-1a", "ap-south-1b"]

# The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden
# type: string
cidr = "192.168.0.0/16"

# Name to be used on all the resources as identifier
# type: string
name = "qa-aps1"

# A list of public subnets inside the VPC
# type: list
public_subnets = ["192.168.0.0/25", "192.168.0.128/25"]

# A list of private subnets inside the VPC
# type: list
private_subnets = ["192.168.10.0/25", "192.168.10.128/25"]

# A list of database subnets
# type: list
database_subnets = ["192.168.20.0/25", "192.168.20.128/25"]

tags = {
  Terraform = "true"
}

enable_dns_hostnames = true

