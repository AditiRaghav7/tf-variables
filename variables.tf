variable "aws_instance_type" {
  description = "Instance type"
  type        = string
}

variable "root_volume_size" {
  type = number
  default = 20                           
}
