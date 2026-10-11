output "security_attribute_security_attributes_id" {
  description = "Map of id values across all security_attribute_security_attributes, keyed the same as var.security_attribute_security_attributes except keys with no id are omitted"
  value       = { for k, v in oci_security_attribute_security_attribute.security_attribute_security_attributes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_attribute_security_attributes_compartment_id" {
  description = "Map of compartment_id values across all security_attribute_security_attributes, keyed the same as var.security_attribute_security_attributes except keys with no compartment_id are omitted"
  value       = { for k, v in oci_security_attribute_security_attribute.security_attribute_security_attributes : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "security_attribute_security_attributes_description" {
  description = "Map of description values across all security_attribute_security_attributes, keyed the same as var.security_attribute_security_attributes except keys with no description are omitted"
  value       = { for k, v in oci_security_attribute_security_attribute.security_attribute_security_attributes : k => v.description if v.description != null && length(v.description) > 0 }
}
output "security_attribute_security_attributes_is_retired" {
  description = "Map of is_retired values across all security_attribute_security_attributes, keyed the same as var.security_attribute_security_attributes except keys with no is_retired are omitted"
  value       = { for k, v in oci_security_attribute_security_attribute.security_attribute_security_attributes : k => v.is_retired if v.is_retired != null }
}
output "security_attribute_security_attributes_name" {
  description = "Map of name values across all security_attribute_security_attributes, keyed the same as var.security_attribute_security_attributes except keys with no name are omitted"
  value       = { for k, v in oci_security_attribute_security_attribute.security_attribute_security_attributes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "security_attribute_security_attributes_security_attribute_namespace_id" {
  description = "Map of security_attribute_namespace_id values across all security_attribute_security_attributes, keyed the same as var.security_attribute_security_attributes except keys with no security_attribute_namespace_id are omitted"
  value       = { for k, v in oci_security_attribute_security_attribute.security_attribute_security_attributes : k => v.security_attribute_namespace_id if v.security_attribute_namespace_id != null && length(v.security_attribute_namespace_id) > 0 }
}
output "security_attribute_security_attributes_security_attribute_namespace_name" {
  description = "Map of security_attribute_namespace_name values across all security_attribute_security_attributes, keyed the same as var.security_attribute_security_attributes except keys with no security_attribute_namespace_name are omitted"
  value       = { for k, v in oci_security_attribute_security_attribute.security_attribute_security_attributes : k => v.security_attribute_namespace_name if v.security_attribute_namespace_name != null && length(v.security_attribute_namespace_name) > 0 }
}
output "security_attribute_security_attributes_state" {
  description = "Map of state values across all security_attribute_security_attributes, keyed the same as var.security_attribute_security_attributes except keys with no state are omitted"
  value       = { for k, v in oci_security_attribute_security_attribute.security_attribute_security_attributes : k => v.state if v.state != null && length(v.state) > 0 }
}
output "security_attribute_security_attributes_time_created" {
  description = "Map of time_created values across all security_attribute_security_attributes, keyed the same as var.security_attribute_security_attributes except keys with no time_created are omitted"
  value       = { for k, v in oci_security_attribute_security_attribute.security_attribute_security_attributes : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "security_attribute_security_attributes_type" {
  description = "Map of type values across all security_attribute_security_attributes, keyed the same as var.security_attribute_security_attributes except keys with no type are omitted"
  value       = { for k, v in oci_security_attribute_security_attribute.security_attribute_security_attributes : k => v.type if v.type != null && length(v.type) > 0 }
}
output "security_attribute_security_attributes_validator" {
  description = "Map of validator values across all security_attribute_security_attributes, keyed the same as var.security_attribute_security_attributes except keys with no validator are omitted"
  value       = { for k, v in oci_security_attribute_security_attribute.security_attribute_security_attributes : k => one(v.validator) if v.validator != null && length(v.validator) > 0 }
}

