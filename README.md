# ![AWS](aws-logo.png) SSM ParameterStore parameters

[![CI](https://github.com/figurate/terraform-aws-ssm-parameters/actions/workflows/main.yml/badge.svg)](https://github.com/figurate/terraform-aws-ssm-parameters/actions/workflows/main.yml)

Purpose: Configure parameters in AWS SSM ParameterStore

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allowed\_pattern | A regular expression to restrict allowed parameter values | `any` | `null` | no |
| context | A parameter context used as a prefix to the stored parameter key | `any` | `null` | no |
| data\_type | Indicates the type of parameter value. Supported values are: `text` and `aws:ec2:image` | `any` | `null` | no |
| key\_id | KMS key id for encrypting SecureString type parameters | `any` | `null` | no |
| list\_params | A list of StringList parameters to add to ParameterStore | `list(map(any))` | `[]` | no |
| overwrite | Overwrite existing parameter values | `bool` | `false` | no |
| parameters | A list of String parameters to add to ParameterStore | `list(map(any))` | `[]` | no |
| secure\_params | A list of SecureString parameters to add to ParameterStore | `list(map(any))` | `[]` | no |

## Outputs

No output.

