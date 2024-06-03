module "docker_example" {
  source = "./docker"

  image          = "nginx:latest"
  container_name = "nginx-test"
  restart_policy = "no"
  environment    = ["TEST=1"]
  ports          = [{ internal : 80, external : 8000 }]
}
