output "ip_address" {
  value       = "${module.ghost.ip_address}"
  description = "The IP for the container."
}

output "container_name" {
  value       = "${module.ghost.container_name}"
  description = "The name of the container."
}