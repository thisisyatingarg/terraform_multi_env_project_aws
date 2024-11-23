variable "my_env" {
  type        = string
  description = "This signifies env type"
}


variable "table_name" {
  type        = string
  default     = "terra-table"
  description = "This is for Aws dynamodb table"
}


variable "bucket_name" {
  type        = string
  default     = "terra-buckettttttttttttt"
  description = "This is for Aws s3 bucket"
}


variable "ami_id" {
  type        = string
  description = "This is for aws ec2 instance"

}

variable "instance_name" {
  type        = string
  default     = "terra-automate-Instance"
  description = "This is for aws ec2 instance"
}

variable "instance_type" {
  type        = string
  description = " This is for aws ec2 instance"
}

variable "instance_count" {
  type        = number
  description = "this is for instance number as per the env type"
}

