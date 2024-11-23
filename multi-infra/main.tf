#Test

module "test-app" {
  source         = "./aws-infra"
  my_env         = "test"
  ami_id         = "ami-0e86e20dae9224db8"
  instance_type  = "t2.micro"
  instance_count = 1
}



#QA - Stage

module "stage-app" {
  source         = "./aws-infra"
  my_env         = "stage"
  ami_id         = "ami-0583d8c7a9c35822c"
  instance_type  = "t2.micro"
  instance_count = 2
}



#Prod 

module "prod-app" {
  source         = "./aws-infra"
  my_env         = "prod"
  ami_id         = "ami-0c82be92b15ae585f"
  instance_type  = "mac1.metal"
  instance_count = 1
}



