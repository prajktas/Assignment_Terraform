output "bucketname" {
  #value = "${aws_s3_bucket.tf_code.id}"
  value = "${join(",",var.number_of_instances)}"
}