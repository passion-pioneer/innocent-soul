variable "name_pemkey" {
  default = ""
}

variable access_key {
  default = ""
}

variable secret_key {
  default = ""
}

variable dmz_prd_vpc {
  default = "b088-kr-dmz"
}

variable vpccidr {
  default = "10.217.48.0/20"
}

variable waflbcidr {
  default = "10.217.48.0/24"
}

variable waf1cidr {
  default = "10.217.49.0/24"
}

variable waf2cidr {
  default = "10.217.50.0/24"
}

variable prvlbcidr {
  default = "10.217.51.0/24"
}

variable web1cidr {
  default = "10.217.52.0/24"
}

variable web2cidr {
  default = "10.217.53.0/24"
}

variable devlbcidr {
  default = "10.217.54.0/24"
}

variable devwebcidr {
  default = "10.217.55.0/24"
}

variable pxcidr {
  default = "10.217.56.0/24"
}

variable devpxcidr {
  default = "10.217.57.0/24"
}



variable "serverinfo" {
  type = map(object({
    servername = string
    ip = string
    serverimageno = string 
  }))
  default = {
    key1 = {
      servername = "b088-prd-ewa-web1"
      ip = "10.217.52.60"
      serverimageno = "108225786"
      #이용자 전자지갑 ap1
    }
    key2 = {
      servername = "b088-prd-awa-web1"
      ip = "10.217.52.61"
      serverimageno = "108225804"
      #가맹점 전자지갑 ap1
    }
    key3 = {
      servername = "b088-prd-ewa-web2"
      ip = "10.217.53.10"
      serverimageno = "108225786"
      #이용자 전자지갑 ap2
    }
    key4 = {
      servername = "b088-prd-awa-web2"
      ip = "10.217.53.11"
      serverimageno = "108225804"
      #가맹점 전자지갑 ap2
    }
    key5 = {
      servername = "b088-dev-ewa-web"
      ip = "10.217.55.10"
      serverimageno = "108225810"
      #이용자 전자지갑 개발
    }
    key6 = {
      servername = "b088-dev-awa-web"
      ip = "10.217.55.11"
      serverimageno = "108225812"
      #가맹점 전자지갑 ap2
    }
 
  } 
}

variable "lbinfo" {
  type = map(object({
    lbname = string
    network_type = string
    type = string
  }))
  default = {
    key1 = {
      lbname = "b088-dmz-alb-ewa-web"
      network_type = "PRIVATE"
      type = "APPLICATION"
    }
    key2 = {
      lbname = "b088-dmz-alb-awa-web"
      network_type = "PRIVATE"
      type = "APPLICATION"
    }
    key3 = {
      lbname = "b088-dmz-alb-waf"
      network_type = "PRIVATE"
      type = "APPLICATION"
    }
    key4 = {
      lbname = "b088-devdmz-alb-ewa-web"
      network_type = "PUBLIC"
      type = "APPLICATION"
    }
    key5 = {
      lbname = "b088-devdmz-alb-awa-web"
      network_type = "PRIVATE"
      type = "APPLICATION"
    }
    key6 = {
      lbname = "b088-devdmz-alb-waf"
      network_type = "PRIVATE"
      type = "APPLICATION"
    }
  } 
}




