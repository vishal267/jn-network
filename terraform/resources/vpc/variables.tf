variable "aws_region" {
  description = "aws region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "cluster Name"
  type        = string
  default     = "webapp"

}



variable "common_tags" {
  description = "Common tags for AWS resources provisioned."
  type        = map(string)
  default     = {}
}
