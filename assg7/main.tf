provider "aws" {
  region = "${var.aws_region}"
  access_key = "AKIAWP4KAZBLRHOBRN6V"
  secret_key = "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"
}

resource "random_id" "tf_bucket_id" {
  byte_length = 2
  #count = "${var.number_of_instances}" //edited by me
}

resource "aws_s3_bucket" "tf_code1" {
    count         = length(var.number_of_instances)
    #bucket        = "${var.project_name}-${random_id.tf_bucket_id.dec}"
    bucket        = var.number_of_instances[count.index] 
    acl           = "private"

    force_destroy =  true

    tags = {
      Name = "tf_bucket"
      #Name = "${format("tf_bucket-%03d" , count.index + 1)}" //edited by me
    }
}