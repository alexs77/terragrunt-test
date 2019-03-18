terragrunt = {
  terraform {
    source = "git::git@github.com:terraform-aws-modules/terraform-aws-security-group.git"
  }

  include = {
    path = "${find_in_parent_folders()}"
  }

  dependencies {
    paths = ["../vpc"]
  }
}

# Name of security group
# type: string
name = "qa-public-sg"

# ID of the VPC where to create security group
# type: string
vpc_id = "" # @modulestf:terraform_output.vpc.vpc_id

# Example security group rules
#ingress_cidr_blocks      = ["10.10.0.0/16", "127.0.0.1/32"]
#ingress_rules            = ["https-443-tcp"]
ingress_with_cidr_blocks = [
  {
      rule        = "ssh-tcp"
      description = "SSH access"
      cidr_blocks = "185.72.192.0/22"
  },
  {
      rule        = "ssh-tcp"
      description = "SSH access"
      cidr_blocks = "212.25.17.144/29"
  },
  {
      rule        = "ssh-tcp"
      description = "SSH access"
      cidr_blocks = "212.25.17.146/32"
  },
]
