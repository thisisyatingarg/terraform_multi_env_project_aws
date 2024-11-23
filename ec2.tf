

#default VPC
resource "aws_default_vpc" "ec2-vpc" {

}


#key-pair
resource "aws_key_pair" "ec2-key" {
  key_name   = "terra-keyy"
  public_key = file("/home/ubuntu/project/terraform-project/terra-keyy.pub")

}




#security group
resource "aws_security_group" "ec2-security" {
  name        = "allow ports"
  description = "This group allows ports for EC2 inst."
  vpc_id      = aws_default_vpc.ec2-vpc.id

  ingress {
    description = "This is for SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    description = "this is for outgoing"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}




# ec2 instance 
resource "aws_instance" "my-instance" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = aws_key_pair.ec2-key.key_name
  security_groups = [aws_security_group.ec2-security.name]
  tags = {
    Name = var.instance_name
  }
}
