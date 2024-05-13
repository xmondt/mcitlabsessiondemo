variable "simple_nested_list" {
 type = list(list(string))
 default = [["a","b"], ["c","d"], ["e","f"]]
}

locals {
  flattened_list = flatten(var.simple_nested_list)
}

output "flattened_list_output" {
  value = local.flattened_list
}
