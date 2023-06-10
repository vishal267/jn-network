variable "region_name" {
  description = "Region name to launch VPC network"
  type        = string
  default     = "us-east-1"
}
variable "bucket_name" {
  description = "bucket name for terraform state files"
  type        = string
  default     = "jn-webapp-tf"
}

variable "environment" {
  description = "Environment name for deployment"
  type        = string
  default     = "production"
}
