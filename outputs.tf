## Output for the AWS Region
output "region" {
  description = "The AWS region used for the deployment"
  value       = module.weasel-crm-resources.region
}

## Output for AWS EC2 Instances 
output "ec2_instance_ids" {
  description = "List of IDs of EC2 instances"
  value       = module.weasel-crm-resources.ec2_instance_ids
}

## Output for AWS RDS Instance
output "aws_db_instance_id" {
  value = module.weasel-crm-resources.aws_db_instance_id
}

## Output for AWS S3 Bucket
output "s3_bucket" {
  value = module.weasel-crm-resources.aws_s3_bucket_id
}

## Output for AWS ELB
output "elb_dns_name" {
  value=module.weasel-crm-resources.aws_elb_dns_name
  #value = aws_elb.weasel_crm_elb.name
}