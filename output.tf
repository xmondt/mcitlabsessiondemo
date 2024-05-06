output "summersportslists"{
   value=[for summersport in var.summersports:summersport]
}
/*
for 1st element in -->inside the list variable summerlistofsports--->"soccer"1st element
for 2nd element in -->inside the list variable summerlistofsports--->"basketball" 2nd element
for 3rd element in -->inside the list variable summerlistofsports--->"badminton" 3rd element
for 4th element in -->inside the list variable summerlistofsports--->"tabletennis" 4th element
for 5th element in -->inside the list variable summerlistofsports--->"football" 5th element
*/
output "montrealuniversitieslists"{
   value=[for montrealuniversity in var.montrealuniversities:montrealuniversity]
}
/*
for 1st element in -->inside the list variable montreallistofuniversities--->"mcgill"1st element
for 2nd element in -->inside the list variable montreallistofuniversities--->"concordia" 2nd element
for 3rd element in -->inside the list variable montreallistofuniversities--->"vanier" 3rd element
for 4th element in -->inside the list variable montreallistofuniversities--->"cegep" 4th element
for 5th element in -->inside the list variable montreallistofuniversities--->"rosemontcollege" 5th element
*/
output "montrealresturantslists"{
   value=[for montrealresturant in var.montrealresturants:montrealresturant]
}
/*
for 1st element in -->inside the list variable montreallistofresturants--->"holder"1st element
for 2nd element in -->inside the list variable montreallistofresturants--->"mcdonald" 2nd element
for 3rd element in -->inside the list variable montreallistofresturants--->"timhortons" 3rd element
for 4th element in -->inside the list variable montreallistofresturants--->"brasserie" 4th element
for 5th element in -->inside the list variable montreallistofresturants--->"steakhouse" 5th element
*/
output "myfavouritefoodlists"{
   value=[for myfavouritefood in var.myfavouritefoods:myfavouritefood]
}
/*
for 1st element in -->inside the list variable myfavouritelistoffoods--->"beans"1st element
for 2nd element in -->inside the list variable myfavouritelistoffoods--->"rice" 2nd element
for 3rd element in -->inside the list variable myfavouritelistoffoods--->"corn" 3rd element
for 4th element in -->inside the list variable myfavouritelistoffoods--->"burntbeef" 4th element
for 5th element in -->inside the list variable myfavouritelistoffoods--->"peppersoup" 5th element
*/
output "cloudslists"{
   value=[for cloudslist in local.cloudslists:cloudslist]
}
/*
for 1st element in -->inside the list variable cloudslists--->"azure"1st element
for 2nd element in -->inside the list variable cloudslists--->"aws" 2nd element
for 3rd element in -->inside the list variable cloudslists--->"gcp" 3rd element
for 4th element in -->inside the list variable cloudslists--->"alibaba" 4th element
for 5th element in -->inside the list variable cloudslists--->"ibm" 5th element
*/
