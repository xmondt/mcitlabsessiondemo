locals{
  servicename="abracadabra"
  forum="abracadabramcit"
  firstname="samuel"
  lastname="ogundimbola"
  city="montreal"
  lengthsa=length(local.firstname)
  lengthlastname=length(local.lastname)
  lengthcity=length(local.city)
  winterlistofsports=["icehockey","snowboarding","iceskating"]
  cloudslists=["azure","aws","gcp","alibaba","ibm"]
  visitcountries=["Ghana","Togo","London","America","Russia"]
  countrieswish=join(" + ", local.visitcountries) 
  canadaamonglist = contains(local.visitcountries, "Canada")
}

variable "mergedstring" {
 default = ["I love", "Canada "]
}

variable "whitespace_string2" {
 default = "I love Canada "
}

output "join_string" {
 value = join(" ", var.mergedstring)
}

output "I love Canada" {
  value = trim(var.whitespace_string," ")
}
output "countrieswish"{
   value = local.countrieswish
}
output "canadaamonglist"{
   value = local.canadaamonglist
}
output "print"{
   value = local.servicename
}
output "secondprint"{
   value = local.forum
}
output "printfirstname"{
   value = local.firstname
}
output "printlastname"{
  value = local.lastname
}
output "printcity"{
  value = local.city
}
output "lengthsa"{
   value = local.lengthsa
}
output "lengthlastname"{
   value = local.lengthlastname
} 
output "lengthcity"{
   value = local.lengthcity
}
variable "company_name"{
 type=string
 default="College"
}
variable "years_of_establishment"{
 type=number
 default=12
}
variable "ifactive"{
 type=bool
 default=true
}
output "company_name"{
  value = var.company_name
}
output "years_of_establishment_output"{
  value = var.years_of_establishment
}
output "ifactive_output"{
  value = var.ifactive
}
output "winterlistofsports"{
  value = [for sport in local.winterlistofsports:sport]
}
/*
for 1st element in -->inside the list variable winterlistofsports--->"icehockey"1st element
for 2nd element in -->inside the list variable winterlistofsports--->"snowboarding" 2nd element
for 3rd element in -->inside the list variable winterlistofsports--->"iceskating" 3rd element
*/
variable "nested-list"{
type= list(list(string))
default=[[1,2,3],[1,2],[1,2,3,4],[1,2,3,4,5]]
}
output "flattened_list"{
value= flatten(var.nested-list)
}
locals {
clouds= ["azure","aws","gcp"] 
cloud_owners= ["Microsoft","Amazon","Google"]
}
output"cloud_owners_map"{
value = { for index, cloud in local.clouds : cloud => local.cloud_owners[index] }
}
