resource "aws_ecr_repository" "serverless_wordpress" {
  name = "${var.site_name}-serverless-wordpress"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}
