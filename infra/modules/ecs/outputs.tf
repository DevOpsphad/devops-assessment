output "ecs_cluster_id" {
  description = "ECS Cluster ID"
  value       = aws_ecs_cluster.ecs_cluster.id
}

output "ecs_security_group_id" {
  description = "ECS Security Group ID"
  value       = aws_security_group.ecs_sg.id
}

output "alb_dns_name" {
  description = "Application Load Balancer DNS"
  value       = aws_lb.alb.dns_name
}