variable "subscription_id"{
  type=string
}

variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "prefix"{
 type=string
 default="samueldimbola12"
}
variable "account_tier"{
  type=string
  default="Standard"
}
variable "access_tier"{
  type=string
  default="Cool"
}
variable "account_replication_type"{
  type=string
  default="GRS"
}

variable "cross_tenant_replication_enabled"{
 type=bool
 default=false
}

variable "environment"{
 type=string
 default="staging"
}
variable "summersports"{
  type=list(string)
  default=["soccer","basketball","badminton","tabletennis","football"]
}
variable "montrealuniversities"{
  type=list(string)
  default=["mcgill","concordia","vanier","cegep","rosemontcollege"]
}
variable "montrealresturants"{
  type=list(string)
  default=["holder","mcdonald","timhortons","brasserie","steakhouse"]
}
variable "myfavouritefoods"{
  type=list(string)
  default=["beans","rice","corn","burntbeef","peppersoup"]
}

variable "myazureresourcegroup"{
 type=string 
default="My Underneath Songs Is Coming"
}

variable "classworkclusters"{
type =list(string)
default=["montreal","toronto","vancouver","alberta"]
}

