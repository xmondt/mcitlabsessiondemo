variable "original_string"{
 default = "Montreal College Information Technology"
}


# Function 1: Length of the string
output "string_length"{
 value = length(var.original_string)
}

# Function 2: Uppercase the string
output "uppercaser_string" {
 value = upper(var.original_string)
}
