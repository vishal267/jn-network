# jn-network


Step 1 - create s3 bucket which will be backend to store statefiles

cd terraform/resources/remote_state_s3

terraform init
terraform apply 

Create backend.tf and update the statefile location to s3 

terraform init  ( yes)
terraform apply 

Step 2 - Create network resources i.e VPC and subntes


cd terraform/resources/vpc


terraform init
terraform apply 


