variable "table_name" {
  type        = string
  default     = "terra-table"
  description = "This is for Aws dynamodb table"
}


variable "bucket_name" {
  type        = string
  default     = "terrrrrrrrrrrrrrrrrrrrra-bucket"
  description = "This is for Aws s3 bucket"
}


variable "ami_id" {
  type        = string
  default     = "ami-0e86e20dae9224db8"
  description = "This is for aws ec2 instance"

}

variable "instance_name" {
  type        = string
  default     = "terra-automate-Instance"
  description = "This is for aws ec2 instance"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = " This is for aws ec2 instance"
}


