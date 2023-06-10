terraform {
  backend "s3" {
	bucket = "jn-webapp-tf"
	key	= "prod/vpc.tfstate"
	region = "us-east-1"
  }
}
