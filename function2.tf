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

# Function 4: Replace "Hello" with "Hi"
output "replaced_string1" {
 value = replace(var.original_string1, "Samuel Dimbola", "Dimbola Samuel")
}

# Function 5: Concatenate with another string
variable "additional_string1" {
 default = " from Lachine"
}
