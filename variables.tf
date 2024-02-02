# AWS Region
variable "cluster_name" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "por-test"
}

# AWS Region
variable "region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "ap-southeast-1"
}

variable "vpc_cidr" {
  description = "CIDR range of VPC"
  type        = string
  default     = "10.29.0.0/16"
}