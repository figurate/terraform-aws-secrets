/**
 * # ![AWS](aws-logo.png) SSM ParameterStore parameters
 *
 * Purpose: Configure parameters in AWS SSM ParameterStore
 */
resource "aws_ssm_parameter" "parameters" {
  count           = length(var.parameters)
  name            = var.context != null ? "/${var.context}/${lookup(var.parameters[count.index], "name")}" : lookup(var.parameters[count.index], "name")
  value           = lookup(var.parameters[count.index], "value")
  description     = lookup(var.parameters[count.index], "description") != null ? lookup(var.parameters[count.index], "description") : null
  type            = "String"
  overwrite       = var.overwrite
  allowed_pattern = var.allowed_pattern
  data_type       = var.data_type

  tags = {
    Context = var.context
  }
}

resource "aws_ssm_parameter" "list_params" {
  count           = length(var.list_params)
  name            = var.context != null ? "/${var.context}/${lookup(var.list_params[count.index], "name")}" : lookup(var.list_params[count.index], "name")
  value           = lookup(var.list_params[count.index], "value")
  description     = lookup(var.list_params[count.index], "description") != null ? lookup(var.list_params[count.index], "description") : null
  type            = "String"
  overwrite       = var.overwrite
  allowed_pattern = var.allowed_pattern
  data_type       = var.data_type

  tags = {
    Context = var.context
  }
}

resource "aws_ssm_parameter" "secure_params" {
  count           = length(var.secure_params)
  name            = var.context != null ? "/${var.context}/${lookup(var.parameters[count.index], "name")}" : lookup(var.secure_params[count.index], "name")
  value           = lookup(var.secure_params[count.index], "value")
  description     = lookup(var.secure_params[count.index], "description") != null ? lookup(var.secure_params[count.index], "description") : null
  type            = "SecureString"
  overwrite       = var.overwrite
  allowed_pattern = var.allowed_pattern
  data_type       = var.data_type
  key_id          = var.key_id

  tags = {
    Context = var.context
  }
}
