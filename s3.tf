resource "aws_s3_bucket" "imgs_bucket_sky_shop" {
  bucket = "my-imgs-bucket-for-sky-shop"
  
  tags = {
    Name        = "My bucket for images for Sky Shop"
  }
}

resource "aws_s3_bucket_cors_configuration" "accept_front_com" {
  bucket = aws_s3_bucket.imgs_bucket_sky_shop.id

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST", "GET"]
    allowed_origins = ["http://${aws_instance.docker.public_dns}"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }

  cors_rule {
    allowed_methods = ["GET"]
    allowed_origins = ["*"]
  }
}


resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.imgs_bucket_sky_shop.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = "*",
        Action   = ["s3:GetObject", "s3:PutObject"]
        Resource = "${aws_s3_bucket.imgs_bucket_sky_shop.arn}/*"
      }
    ]
  })
}

resource "aws_s3_bucket_public_access_block" "public_access_block" {
  bucket = aws_s3_bucket.imgs_bucket_sky_shop.id

  block_public_acls   = false
  block_public_policy = false
  ignore_public_acls  = false
  restrict_public_buckets = false
}

### output de url donde corre el bucket, para usarse en el front-end
output "s3_bucket_url" {
  value = aws_s3_bucket.imgs_bucket_sky_shop.bucket_domain_name
}