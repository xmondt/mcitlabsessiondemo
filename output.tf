output "summersportslists"{
   value=[for summersports in var.summersports:summersport]
}
/*
for 1st element in -->inside the list variable summerlistofsports--->"basketball"1st element
for 2nd element in -->inside the list variable summerlistofsports--->"badminton" 2nd element
for 3rd element in -->inside the list variable summerlistofsports--->"tabletennis" 3rd element
for 4th element in -->inside the list variable summerlistofsports--->"football" 4th element
*/
