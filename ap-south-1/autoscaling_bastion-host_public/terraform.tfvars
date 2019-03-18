terragrunt = {
  terraform {
    source = "git::git@github.com:terraform-aws-modules/terraform-aws-autoscaling.git"
  }

  include = {
    path = "${find_in_parent_folders()}"
  }

  dependencies {
    paths = ["../vpc", "../security-group_public", "../keypair"]
  }
}

# The number of Amazon EC2 instances that should be running in the group
# type: string
desired_capacity = "1"

# Controls how health checking is done. Values are - EC2 and ELB
# type: string
health_check_type = "EC2"

# The EC2 image ID to launch
# type: string
# Ubuntu 18.10
image_id = "ami-0608bee6256ff4992"

# The size of instance to launch
# type: string
instance_type = "t2.micro"

# The maximum size of the auto scale group
# type: string
max_size = "1"

# The minimum size of the auto scale group
# type: string
min_size = "1"

# Creates a unique name beginning with the specified prefix
# type: string
name = "qa-bastion-host"

# A list of security group IDs to assign to the launch configuration
# type: list
security_groups = [] # @modulestf:terraform_output.security-group_public.this_security_group_id.to_list

# A list of subnet IDs to launch resources in
# type: list
vpc_zone_identifier = [] # @modulestf:terraform_output.vpc.public_subnets

# fingerprint = "" # @modulestf:terraform_output.keypair.fingerprint
key_name = "" # @modulestf:terraform_output.keypair.key_name

