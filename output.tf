output "summersportslists"{
   value=[for sport in var.summersportslists:sport]
}
/*
for 1st element in -->inside the list variable summerlistofsports--->"soccer"1st element
for 2nd element in -->inside the list variable summerlistofsports--->"basketball" 2nd element
for 3rd element in -->inside the list variable summerlistofsports--->"badminton" 3rd element
for 4th element in -->inside the list variable summerlistofsports--->"tabletennis" 4th element
for 5th element in -->inside the list variable summerlistofsports--->"football" 5th element
*/
