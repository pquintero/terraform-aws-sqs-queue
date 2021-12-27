require 'awspec'

service_name = `cd test/awspec/ && terraform output name`.strip.delete('"')

describe sqs('bancoripleyperu-dm-dev--sqs-s3-lambda.fifo') do
  it { should exist }
end