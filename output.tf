output "summersportslists"{
   value=[for summersports in local.summersports:summersport]
}
