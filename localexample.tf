variable "simple_nested_list" {
 type = list(list(string))
 default = [["a","b"], ["c","d"], ["e","f"]]
}

simple_local_flattened_list = flatten(var.simple_nested_list)
