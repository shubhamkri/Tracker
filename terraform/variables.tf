variable "image_name" {
  description = "Docker image to run"
  type        = string
  default     = "expense-tracker:latest"
}

variable "dockerfile" {
  description = "Dockerfile path"
  type        = string
  default     = "Dockerfile"
}

variable "build_context" {
  description = "Docker build context"
  type        = string
  default     = "."
}

variable "internal_port" {
  description = "Port inside container"
  type        = number
  default     = 8501
}

variable "external_port" {
  description = "Port on host"
  type        = number
  default     = 8501
}
