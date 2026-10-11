variable "security_attribute_security_attributes" {
  description = <<EOT
Map of security_attribute_security_attributes, attributes below
Required:
    - description
    - name
    - security_attribute_namespace_id
Optional:
    - is_retired
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - validator (block):
        - validator_type (required)
        - values (optional)
EOT

  type = map(object({
    description                     = string
    name                            = string
    security_attribute_namespace_id = string
    is_retired                      = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    validator = optional(object({
      validator_type = string
      values         = optional(list(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.security_attribute_security_attributes : (
        v.validator == null || (contains([for v in ["DEFAULT", "ENUM"] : lower(v)], lower(v.validator.validator_type)))
      )
    ])
    error_message = "must be one of: \"DEFAULT\", \"ENUM\""
  }
}

