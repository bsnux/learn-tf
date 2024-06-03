output "image_name" {
  value = docker_image.default.name
}

output "image_id" {
  value = docker_image.default.image_id
}

output "container_name" {
  value = docker_container.default.name
}

output "privileged" {
  value = docker_container.default.privileged
}

output "ports" {
  value = docker_container.default.ports
}

output "environment" {
  value = docker_container.default.env
}