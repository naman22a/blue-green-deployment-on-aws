output "alb_dns_name" {
  description = "Live URL (port 80) points to the active color"
  value       = "http://${aws_lb.main.dns_name}"
}

output "test_url" {
  description = "Idle environment URL (port 8080) - smoke test here before switching"
  value       = "http://${aws_lb.main.dns_name}:8080"
}

output "active_color" {
  value = var.active_color
}

output "idle_color" {
  value = local.idle_color
}

# The pipeline reads these so it can keep the other color's tag unchanged on every apply
output "blue_image_tag" {
  value = var.blue_image_tag
}

output "green_image_tag" {
  value = var.green_image_tag
}

output "ecr_repository_url" {
  value = aws_ecr_repository.app.repository_url
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.main.name
}

output "ecs_service_names" {
  value = { for k, s in aws_ecs_service.app : k => s.name }
}
