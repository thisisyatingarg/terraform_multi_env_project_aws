

# ec2 instance 
resource "aws_instance" "my-instance" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  #key_name        = aws_key_pair.ec2-key.key_name
  #security_groups = [aws_security_group.ec2-security.name]
  tags = {
    Name = "${var.my_env}-${var.instance_name}"
  }
}
