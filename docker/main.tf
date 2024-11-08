# Docker image
resource "docker_image" "default" {
  name         = var.image
  keep_locally = false
}

# Docker container
resource "docker_container" "default" {
  # Image to be used for creating the docker container
  image      = docker_image.default.image_id
  # Name for the docker container
  name       = var.container_name
  # Docker restart policy
  restart    = var.restart_policy
  # Will the container run as privileged?
  privileged = var.privileged
  # Environment name
  env        = var.environment

  # Exposing ports
  dynamic "ports" {
    for_each = var.ports == null ? [] : var.ports
    content {
      internal = ports.value.internal
      external = ports.value.external
    }
  }
}
