output "app_server_instance_id" {
  description = "i-088c87c645eddbe53"
  value       = aws_instance.app_server.id
}

output "app_server_public_ip" {
  description = "52.77.254.243"
  value       = aws_instance.app_server.public_ip
}
