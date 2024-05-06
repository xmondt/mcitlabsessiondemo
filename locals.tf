locals{
  servicename="abracadabra"
  forum="abracadabramcit"
  firstname="samuel"
  lastname="ogundimbola"
  city="montreal"
  lengthsa=length(local.firstname)
  lengthlastname=length(local.lastname)
  lengthcity=length(local.city)
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
   value = local.firstname
}
output "lengthlastname"{
   value = local.length_lastname
} 
output "length.city"{
   value = local.length_local.city
}
