output "bucket_name" {
  description = "Name of the created storage bucket"
  value       = aws_s3_bucket.my_first_bucket.id
}

output "uploaded_file_url" {
  description = "The local URL path to view your uploaded file"
  value       = "http://localhost:4566/${aws_s3_bucket.my_first_bucket.id}/${aws_s3_object.sample_upload.key}"
}