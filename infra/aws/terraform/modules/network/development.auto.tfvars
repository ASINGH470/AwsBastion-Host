##########################################################
# TAGs
##########################################################
customer              = "org"
category              = "core" #platform, core, app
business_unit         = "OneDeliver"
applicationname       = "CloudFoundationLZ"
applicationname_short = "cf"
data_classification   = "Private"
approver_name         = ""
environment           = "Dev"
environment_short     = "d"
owner_name            = "jayanto.mukherjee@capgemini.com"
contact               = "mahesh.jadhav@capgemini.com"

##########################################################
#Provision Flags
##########################################################

provision_bastionhost = true

##########################################################
# VPC
##########################################################
region                           = "us-east-1"
vpc_cidr_block                   = "10.0.0.0/16"
instance_tenancy                 = "default"
enable_dns_hostnames             = false
enable_dns_support               = false
assign_generated_ipv6_cidr_block = false

##########################################################
ami           = "ami-0aa7d40eeae50c9a9"
instance_type = "t2.micro"
# key_name      = "bastion_keypair"
# subnet_id     = "subnet-014b0b2a9b558001c"



