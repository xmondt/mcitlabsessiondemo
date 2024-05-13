variable "nested_map" {
  type    = map(map(string))
  default = {
    group1 = {"name" = "Alice", "age" = "25"}
    group2 = {"name" = "Bob", "age" = "30"}
  }

