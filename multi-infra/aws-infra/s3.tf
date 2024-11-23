resource "aws_s3_bucket" "my-bucket" {
  bucket = "${var.my_env}-${var.bucket_name}"
  tags = {
    Name = "${var.my_env}-${var.bucket_name}"
  }
}

