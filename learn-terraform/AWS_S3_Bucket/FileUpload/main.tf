resource "aws_s3_bucket" "testbucket" {
  bucket = "teamtuck-test-bucket"
}

resource "aws_s3_object" "upload" {
  bucket = aws_s3_bucket.testbucket.bucket
  key    = "Resume.pdf"
  source = "Resume2022.pdf"
}

