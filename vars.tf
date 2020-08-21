variable "parameters" {
  description = "A list of String parameters to add to ParameterStore"
  type        = list(map(any))
  default     = []
}

variable "secure_params" {
  description = "A list of SecureString parameters to add to ParameterStore"
  type        = list(map(any))
  default     = []
}

variable "list_params" {
  description = "A list of StringList parameters to add to ParameterStore"
  type        = list(map(any))
  default     = []
}

variable "context" {
  description = "A parameter context used as a prefix to the stored parameter key"
  default     = null
}

variable "allowed_pattern" {
  description = "A regular expression to restrict allowed parameter values"
  default     = null
}

variable "data_type" {
  description = "Indicates the type of parameter value. Supported values are: `text` and `aws:ec2:image`"
  default     = null
}

variable "overwrite" {
  description = "Overwrite existing parameter values"
  default     = false
}

variable "key_id" {
  description = "KMS key id for encrypting SecureString type parameters"
  default     = null
}
