# Terraform provider to be used by the module
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }

  # TF version
  required_version = "~> 1.8.1"
}
