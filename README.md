Terraform module for AWS Key Pair + S3
==========================================

Terraform module used to create AWS Key Pair and store them in S3. With simple syntax.

## Usage

```terraform
module "ec2-key" {
  source        = "terraform-iaac/terraform-aws-key-pair/aws"

  key_name           = "my-ec2-instance"
  key_storage_bucket = aws_s3_bucket.ssh_key_storage.id
}

module "ec2" {
  source = "ec2...."
  
  ..................
  key_pair_name = module.ec2-key.key_name
  ..................
}

```

## Terraform Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.26 |
| aws | >= 3.0.0 |

## Inputs

| Name | Description | Type | Default |  Required |
|------|-------------|------|---------|:--------:|
| key\_name  | Key Pair name in AWS & S3 file | `string` | n/a | yes |
| key\_storage\_bucket | S3 bucket | `string` | n/a | yes |
| rsa\_bits | Rsa bits for private key | `number` | `4096` |  no |
## Outputs
| Name | Description |
|------|:-----------:|
| public_key | Public key pem |
| private_key | Private key pem |
| key_name | Key Pair name in AWS & S3 file |