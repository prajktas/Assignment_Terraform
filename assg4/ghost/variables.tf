 variable "image_name" {  
     description = "Image name for container"    
     default = "ghost:latest"
          }

 variable "container_name" { 
     description = "Name for container" 
       default = "blog"
            }

 variable "ext_port" {   
     description = "Port  for container"
     default = 8080
        }