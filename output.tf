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
output "myfavouritefood"{
   value=[for myfavouritefood in var.favouritefood:favouritefood]
}
/*
for 1st element in -->inside the list variable myfavouritefood--->"beans"1st element
for 2nd element in -->inside the list variable myfavouritefood--->"rice" 2nd element
for 3rd element in -->inside the list variable myfavouritefood--->"corn" 3rd element
for 4th element in -->inside the list variable myfavouritefood--->"burntbeef" 4th element
for 5th element in -->inside the list variable myfavouritefood--->"peppersoup" 5th element
*/
