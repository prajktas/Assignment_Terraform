terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.15.0"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}
resource "docker_image" "nginx_image" {
  name = "nginx:latest"
}