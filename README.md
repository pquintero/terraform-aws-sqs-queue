## Usage

```sh
module "terraform-aws-sqs" {
  source  = "pquintero/terraform-aws-sqs"
  version = "0.0.1"
}
```


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.68.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.68.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_sqs_queue.sqs_queue](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_content_based_deduplication"></a> [content\_based\_deduplication](#input\_content\_based\_deduplication) | Enables content-based deduplication for FIFO queues. | `bool` | `false` | no |
| <a name="input_delay_seconds"></a> [delay\_seconds](#input\_delay\_seconds) | The time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes). The default for this attribute is 0 seconds. | `number` | `90` | no |
| <a name="input_enable_sqs_queue"></a> [enable\_sqs\_queue](#input\_enable\_sqs\_queue) | Enable SQS queue usage | `bool` | `false` | no |
| <a name="input_enable_sqs_queue_policy"></a> [enable\_sqs\_queue\_policy](#input\_enable\_sqs\_queue\_policy) | Enable SQS queue policy | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for service | `string` | `"STAGE"` | no |
| <a name="input_fifo_queue"></a> [fifo\_queue](#input\_fifo\_queue) | Boolean designating a FIFO queue. If not set, it defaults to false making it standard. | `bool` | `false` | no |
| <a name="input_kms_data_key_reuse_period_seconds"></a> [kms\_data\_key\_reuse\_period\_seconds](#input\_kms\_data\_key\_reuse\_period\_seconds) | The length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes). | `number` | `300` | no |
| <a name="input_kms_master_key_id"></a> [kms\_master\_key\_id](#input\_kms\_master\_key\_id) | The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. | `string` | `"alias/aws/sqs"` | no |
| <a name="input_maxReceiveCount"></a> [maxReceiveCount](#input\_maxReceiveCount) | Value for redrive\_policy (set maxReceiveCount for dead\_letter\_queue) | `number` | `10` | no |
| <a name="input_max_message_size"></a> [max\_message\_size](#input\_max\_message\_size) | The limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 262144 bytes (256 KiB). The default for this attribute is 262144 (256 KiB). | `number` | `2048` | no |
| <a name="input_message_retention_seconds"></a> [message\_retention\_seconds](#input\_message\_retention\_seconds) | The number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). The default for this attribute is 345600 (4 days). | `number` | `86400` | no |
| <a name="input_name"></a> [name](#input\_name) | Name to be used on all resources as prefix | `string` | `"TEST"` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | description | `string` | `"(Optional) Creates a unique name beginning with the specified prefix. Conflicts with sqs_queue_name"` | no |
| <a name="input_queue_url"></a> [queue\_url](#input\_queue\_url) | (Required) The URL of the SQS Queue to which to attach the policy | `string` | `""` | no |
| <a name="input_receive_wait_time_seconds"></a> [receive\_wait\_time\_seconds](#input\_receive\_wait\_time\_seconds) | The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds). The default for this attribute is 0, meaning that the call will return immediately. | `number` | `10` | no |
| <a name="input_sqs_dead_letter_queue_arn"></a> [sqs\_dead\_letter\_queue\_arn](#input\_sqs\_dead\_letter\_queue\_arn) | Set sqs arn for dead\_letter\_queue | `number` | `0` | no |
| <a name="input_sqs_queue_name"></a> [sqs\_queue\_name](#input\_sqs\_queue\_name) | description | `string` | `""` | no |
| <a name="input_sqs_queue_policy"></a> [sqs\_queue\_policy](#input\_sqs\_queue\_policy) | (Optional) The JSON policy for the SQS queue. For more information about building AWS IAM policy documents with Terraform | `any` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A list of tag blocks. Each element should have keys named key, value, etc. | `map(string)` | `{}` | no |
| <a name="input_visibility_timeout_seconds"></a> [visibility\_timeout\_seconds](#input\_visibility\_timeout\_seconds) | the timeout in seconds of visibility of the message | `number` | `30` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sqs_queue_arn"></a> [sqs\_queue\_arn](#output\_sqs\_queue\_arn) | The URL for the created Amazon SQS queue. |
| <a name="output_sqs_queue_id"></a> [sqs\_queue\_id](#output\_sqs\_queue\_id) | The ARN of the SQS queue |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Test

```sh
gem install bundler
bundle install --jobs 4 --retry 3
bundle exec kitchen test
```

## Doc

```sh
pre-commit run -a
```

## Autor
 
Module managed by [Banco Ripley Peru](https://ripley.com.pe)