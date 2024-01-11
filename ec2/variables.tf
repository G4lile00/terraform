variable "instance_type" {
  type        = string
  description = "Instance Type"
  default     = "t2.micro"
}

variable "ami" {
  type        = string
  description = "AMI"
  default     = "ami-0c7217cdde317cfec"
}

variable "key_name" {
  type        = string
  description = "SSH Key Name"
  default     = "default"
}

