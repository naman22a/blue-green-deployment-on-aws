variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Prefix used for naming all resources"
  type        = string
  default     = "bluegreen-nginx"
}

variable "container_port" {
  description = "Port the NGINX container listens on"
  type        = number
  default     = 80
}

variable "cpu" {
  description = "Fargate task CPU units"
  type        = number
  default     = 256
}

variable "memory" {
  description = "Fargate task memory (MiB)"
  type        = number
  default     = 512
}

variable "desired_count" {
  description = "Number of tasks per environment (blue / green)"
  type        = number
  default     = 2
}

variable "health_check_path" {
  description = "ALB health check path"
  type        = string
  default     = "/"
}

# ---- Blue-green controls (changed by the GitHub Actions pipeline) ----

variable "active_color" {
  description = "Which environment receives live traffic on port 80: blue or green"
  type        = string
  default     = "blue"

  validation {
    condition     = contains(["blue", "green"], var.active_color)
    error_message = "active_color must be either \"blue\" or \"green\"."
  }
}

variable "blue_image_tag" {
  description = "Tag of the custom NGINX image in ECR for the blue environment"
  type        = string
  default     = "latest"
}

variable "green_image_tag" {
  description = "Tag of the custom NGINX image in ECR for the green environment"
  type        = string
  default     = "latest"
}
