terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_container" "app_container" {
  name  = "expense_tracker_app"
  image = var.image_name

  ports {
    internal = 8501
    external = 8501
  }
}
