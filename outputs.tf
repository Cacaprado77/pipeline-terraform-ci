output "vm_ip" {
  description = "IP da VM criada na AWS"
  value       = aws_instance.vm.public_ip
}

output "subnet_id" {
  description = "ID da Subnet criada na AWS"
  value       = aws_subnet.subnet.id
}

output "security_group_id" {
  description = "ID da SG criada na AWS"
  value       = aws_security_group.security_group.id
}