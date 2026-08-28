resource "aws_s3_bucket" "my_first_bucket" {
  bucket = "jeeva-learning-bucket"

  tags = {
    Environment = var.environment
    Author      = var.author
  }
}

resource "aws_s3_object" "sample_upload" {
  bucket = aws_s3_bucket.my_first_bucket.id
  key    = var.s3_object_key
  source = "${path.root}/hello.txt"
}
