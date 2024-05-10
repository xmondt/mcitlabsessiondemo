variable "original_string"{
 default = "Samuel Dimbola"
}

# Function 1a: Uppercase the string
output "uppercase_string" {
 value = upper(var.original_string)
}

# Function 2a: Lowercase the string
output "lowercase_string" {
 value = lower(var.original_string)
}
