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

resource "docker_image" "ghost_image" {
    name = "${var.image_name}"
}

resource "docker_container" "ghost_container" {
    name  = "${var.container_name}"
    image = "${docker_image.ghost_image.latest}"
    ports {
        internal = "2368"
        external = "${var.ext_port}"
    }
}