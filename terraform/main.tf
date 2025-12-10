terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_container" "app" {
  name  = "my_app"
  image = var.image
  ports {
    internal = var.port
    external = var.port
  }
}
