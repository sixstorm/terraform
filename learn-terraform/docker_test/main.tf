terraform {
    required_providers {
        docker = {
            source = "kreuzwerker/docker"
            version = "~> 2.13.0"
        }
    }
}

provider "docker" {}

resource "docker_image" "jellyfin" {
    name = "lscr.io/linuxserver/jellyfin"
    keep_locally = false
}

resource "docker_container" "jellyfin" {
    image = docker_image.jellyfin.latest
    name = "jellyfin"
    restart = "always"
    ports {
        internal = 8096
        external = 8096
    }
}