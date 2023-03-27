output "bastion" {
  value = module.bastion_host
}  
output "id" {
  value       = module.aws_vpc.id
  description = "The ID of the aws vpc"
}  