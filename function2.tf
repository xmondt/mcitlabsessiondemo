variable "original_string1"{
 default = "Samuel.Dimbola"
}

variable "original_string2"{
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

# Function 4a: Replace "Hello" with "Hi"
output "replaced_string1" {
 value = replace(var.original_string1, "Samuel Dimbola", "Dimbola Samuel")
}

# Function 5a: Concatenate with another string
variable "additional_string1" {
 default = " from Lachine"
}

output "concatenated_string1" {
 value = "${var.original_string1}${var.additional_string1}"
}

# Function 6b: Split the string by space into a list
output "split_example1" {
  value = split(" ", var.original_string1)
}

# Function 6c: Split the string by space into a list
output "split_example2" {
  value = split(" ", var.original_string2)
