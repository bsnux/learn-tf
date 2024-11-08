/*
* Simple example using the `docker` module, assigning some variables to
* build a `nginx` docker container exposing the port 80 through the 8000
* local port
*/
module "docker_example" {
  source = "./docker"

  image          = "nginx:latest"
  container_name = "nginx-test"
  restart_policy = "no"
  environment    = ["TEST=1"]
  ports          = [{ internal : 80, external : 8000 }]
}
