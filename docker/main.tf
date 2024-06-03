resource "docker_image" "default" {
  name         = var.image
  keep_locally = false
}

resource "docker_container" "default" {
  image      = docker_image.default.image_id
  name       = var.container_name
  restart    = var.restart_policy
  privileged = var.privileged
  env        = var.environment

  dynamic "ports" {
    for_each = var.ports == null ? [] : var.ports
    content {
      internal = ports.value.internal
      external = ports.value.external
    }
  }
}