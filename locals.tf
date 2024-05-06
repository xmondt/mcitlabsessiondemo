locals{
  servicename="abracadabra"
  forum="abracadabramcit"
  firstname="samuel"
  lastname="ogundimbola"
  city="montreal"
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
