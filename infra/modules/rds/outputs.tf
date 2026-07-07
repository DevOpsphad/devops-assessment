output "db_endpoint" {
  description = "RDS Endpoint"
  value       = aws_db_instance.postgres.endpoint
}

output "db_identifier" {
  description = "RDS Identifier"
  value       = aws_db_instance.postgres.identifier
}

output "rds_security_group_id" {
  description = "RDS Security Group ID"
  value       = aws_security_group.rds_sg.id
}