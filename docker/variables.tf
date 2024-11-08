/*
* Defining here different variables for the Docker image and container to
* be created by the module
*/
variable "image" {
  description = "Image to start the container from"
  type        = string
  default     = null
}

variable "container_name" {
  description = "Custom container name"
  type        = string
  default     = null
}

variable "restart_policy" {
  description = "Restart policy. Default: no"
  type        = string
  default     = "no"
}

variable "privileged" {
  description = "Extended privileges to this container"
  type        = bool
  default     = false
}

variable "environment" {
  description = "Add environment variables"
  type        = set(string)
  default     = null
}

variable "ports" {
  description = "Expose ports"
  type = list(object({
    internal = number
    external = number
  }))
  default = null
}
