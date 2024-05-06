locals{
  servicename="abracadabra"
  forum="abracadabramcit"
}
output "print"{
   value = local.servicename
}
output "secondprint"{
   value = local.forum
}
