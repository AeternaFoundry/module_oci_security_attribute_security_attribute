resource "oci_security_attribute_security_attribute" "security_attribute_security_attributes" {
  for_each = var.security_attribute_security_attributes

  description                     = each.value.description
  name                            = each.value.name
  security_attribute_namespace_id = each.value.security_attribute_namespace_id
  is_retired                      = each.value.is_retired

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "validator" {
    for_each = each.value.validator != null ? [each.value.validator] : []
    content {
      validator_type = validator.value.validator_type
      values         = validator.value.values
    }
  }
}

