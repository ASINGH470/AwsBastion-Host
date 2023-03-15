variable "region" {
  type    = string
  default = "us-east-1"
}
variable "provision_bastion_host" {
  type        = bool
  default     = true
  description = "If aws bastion host should be provisioned or not?"
}
###################################################
# TAGs
###################################################
variable "customer" {
  type = string
}
variable "category" {
  type = string
}
variable "environment" {
  type = string
}
variable "environment_short" {
  type = string
}
variable "business_unit" {
  type = string
}
variable "applicationname" {
  type = string
}
variable "applicationname_short" {
  type = string
}
variable "approver_name" {
  type = string
}
variable "owner_name" {
  type = string
}
variable "data_classification" {
  type = string
}
variable "contact" {
  type = string
}
###################################################
# Variables
###################################################

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in."
  type        = string
  default     = ""
}
variable "key_name" {
  description = "The key name of the Key Pair to use for the instance."
  type        = string
  default     = ""
}
variable "ami" {
  type        = string
  description = " AMI to use for the instance. Required unless launch_template is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting ami will override the AMI specified in the Launch Template."
  default     = ""
}
variable "instance_type" {
  description = "The type of instance to start."
  type        = string
  default     = ""
}
variable "tags" {
  description = "Name of the internet gateway"
  type        = map(string)
  default = {
    "Name" = "bastion"
  }
}