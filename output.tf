output "summersportslists"{
   value=[for summersports in var.summersports:summersport]
}
