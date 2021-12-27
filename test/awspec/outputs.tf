output "sqs_queue_id" {
  description = "The ARN of the SQS queue"
  value       = element(concat(module.terraform-aws-sqs.*.id, [""]), 0)
}