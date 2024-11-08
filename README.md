# learn-tf

Learn Terraform.

Simple module using Terraform Docker provider.

This repository contains code showing how to build a Terraform module using
the Docker provider as an example.

The `main.tf` file shows how to use the Terraform module living in the `docker`
directory. The example assigns values to a few variables declared in the
mentioned module. The goal of the module is to create a docker container, in
our example, we're building a `nginx` container exposing the HTTP port 80
through the local 8000 port.

The `docker/output.tf` file will displays the value for some variables populated
after the Terraform plan has been executed.

For additional details, check the commments in the `docker` module files.
