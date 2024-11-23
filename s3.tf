resource "aws_s3_bucket" "my-bucket" {
  bucket   = var.bucket_name
  tags = {
    Name = var.bucket_name
  }
}
