module "terraform-aws-sqs" {
  source                      = "../../"
  sqs_queue_name              = "${lookup(var.project_name, var.env)}-sqs-s3-lambda.fifo"
  fifo_queue                  = true
  content_based_deduplication = true
}