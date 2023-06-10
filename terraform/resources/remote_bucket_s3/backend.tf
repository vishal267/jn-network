terraform {
  backend "s3" {
	bucket = "jn-webapp-tf"
	key	= "prod/remote_bucket_s3"
	region = "us-east-1"
  }
}
