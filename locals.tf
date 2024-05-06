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
  value = [for sport in winterlistofsports:
    print(sport)
}
