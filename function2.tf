variable "original_string1"{
 default = "Samuel Dimbola"
}

# Function 1a: Uppercase the string
output "uppercase_string1" {
 value = upper(var.original_string1)
}

# Function 2a: Lowercase the string
output "lowercase_string1" {
 value = lower(var.original_string1)
}

# Function 4: Replace "Hi" with "Hello"
output "replaced_string1" {
 value = replace(var.original_string1, "Samuel", "Dimbola")
}

