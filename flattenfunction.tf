variable "simple_nested_list" {
 type = list(list(string))j
 default = [["a","b"], ["c","d"], ["e","f"]]
}

variable "nested_list" {
  type    = list(list(string))
  default = [["a", "b"], ["c", "d"], ["e", "f"]]
}


locals {
  flattened_list = flatten(var.simple_nested_list)
  flattened_list2 = flatten(var.nested_list) 
}

output "flattened_list_output" {
  value = local.flattened_list
}

output "flattened_list2_output" {
  value = local.flattened_list2
}

output "flattened_map_result" {
  value = local.flattened_map
}
