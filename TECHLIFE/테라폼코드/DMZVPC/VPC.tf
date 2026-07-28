#프로바이더 설정
#site는 반드시 gov(공공) 설정해야함
provider "ncloud" {
  support_vpc = true
  region      = "KR"
  access_key  = var.access_key
  secret_key  = var.secret_key
  site = "gov"
}


#Pemkey 생성 output을 통하여 개인키 획득
resource "ncloud_login_key" "name_pemkey" {
  key_name = var.name_pemkey
}


#VPC 생성 변수는 dmzvpc 및 vpccidr (variables.tf에서 수정가능)
resource "ncloud_vpc" "dmzvpc" {
  name            = "${var.dmz_prd_vpc}-vpc"
  ipv4_cidr_block = "${var.vpccidr}"
}


resource "ncloud_subnet" "subnet_waflb" {
  name           = "${var.dmz_prd_vpc}-sbn-waflb"
  vpc_no         = ncloud_vpc.dmzvpc.id
  subnet         = "${var.waflbcidr}"
  zone           = "KR-1"
  network_acl_no = ncloud_vpc.dmzvpc.default_network_acl_no
  subnet_type    = "PUBLIC"
  usage_type = "LOADB" //"GEN : 일반용" "LOADB : 로드밸런서용"
  // PUBLIC(Public) | PRIVATE(Private)
}

resource "ncloud_subnet" "subnet_waf1cidr" {
  name           = "${var.dmz_prd_vpc}-sbn-waf1"
  vpc_no         = ncloud_vpc.dmzvpc.id
  subnet         = "${var.waf1cidr}"
  zone           = "KR-1"
  network_acl_no = ncloud_vpc.dmzvpc.default_network_acl_no
  subnet_type    = "PRIVATE"
  usage_type = "GEN" //"GEN : 일반용" "LOADB : 로드밸런서용"
  // PUBLIC(Public) | PRIVATE(Private)
}

resource "ncloud_subnet" "subnet_waf2cidr" {
  name           = "${var.dmz_prd_vpc}-sbn-waf2"
  vpc_no         = ncloud_vpc.dmzvpc.id
  subnet         = "${var.waf2cidr}"
  zone           = "KR-1"
  network_acl_no = ncloud_vpc.dmzvpc.default_network_acl_no
  subnet_type    = "PRIVATE"
  usage_type = "GEN" //"GEN : 일반용" "LOADB : 로드밸런서용"
  // PUBLIC(Public) | PRIVATE(Private)
}

resource "ncloud_subnet" "subnet_prvlb" {
  name           = "${var.dmz_prd_vpc}-sbn-lb"
  vpc_no         = ncloud_vpc.dmzvpc.id
  subnet         = "${var.prvlbcidr}"
  zone           = "KR-1"
  network_acl_no = ncloud_vpc.dmzvpc.default_network_acl_no
  subnet_type    = "PRIVATE"
  usage_type = "LOADB" //"GEN : 일반용" "LOADB : 로드밸런서용"
  // PUBLIC(Public) | PRIVATE(Private)
}

resource "ncloud_subnet" "subnet_web1" {
  name           = "${var.dmz_prd_vpc}-sbn-web1"
  vpc_no         = ncloud_vpc.dmzvpc.id
  subnet         = "${var.web1cidr}"
  zone           = "KR-1"
  network_acl_no = ncloud_vpc.dmzvpc.default_network_acl_no
  subnet_type    = "PRIVATE"
  usage_type = "GEN" //"GEN : 일반용" "LOADB : 로드밸런서용"
  // PUBLIC(Public) | PRIVATE(Private)
}


resource "ncloud_subnet" "subnet_web2" {
  name           = "${var.dmz_prd_vpc}-sbn-web2"
  vpc_no         = ncloud_vpc.dmzvpc.id
  subnet         = "${var.web2cidr}"
  zone           = "KR-1"
  network_acl_no = ncloud_vpc.dmzvpc.default_network_acl_no
  subnet_type    = "PRIVATE"
  usage_type = "GEN"
  // PUBLIC(Public) | PRIVATE(Private)
}

resource "ncloud_subnet" "subnet_devlb" {
  name           = "${var.dmz_prd_vpc}-sbn-devlb"
  vpc_no         = ncloud_vpc.dmzvpc.id
  subnet         = "${var.devlbcidr}"
  zone           = "KR-1"
  network_acl_no = ncloud_vpc.dmzvpc.default_network_acl_no
  subnet_type    = "PRIVATE"
  usage_type = "LOADB"
  // PUBLIC(Public) | PRIVATE(Private)
}


resource "ncloud_subnet" "subnet_devweb" {
  name           = "${var.dmz_prd_vpc}-sbn-devweb"
  vpc_no         = ncloud_vpc.dmzvpc.id
  subnet         = "${var.devwebcidr}"
  zone           = "KR-1"
  network_acl_no = ncloud_vpc.dmzvpc.default_network_acl_no
  subnet_type    = "PRIVATE"
  usage_type = "GEN"
  // PUBLIC(Public) | PRIVATE(Private)
}
#AP1용 Subnet 생성

resource "ncloud_subnet" "subnet_px" {
  name           = "${var.dmz_prd_vpc}-sbn-px"
  vpc_no         = ncloud_vpc.dmzvpc.id
  subnet         = "${var.pxcidr}"
  zone           = "KR-1"
  network_acl_no = ncloud_vpc.dmzvpc.default_network_acl_no
  subnet_type    = "PUBLIC"
  usage_type = "GEN"
  // PUBLIC(Public) | PRIVATE(Private)
}
#AP2용 Subnet 생성
resource "ncloud_subnet" "subnet_devpx" {
  name           = "${var.dmz_prd_vpc}-sbn-devpx"
  vpc_no         = ncloud_vpc.dmzvpc.id
  subnet         = "${var.devpxcidr}"
  zone           = "KR-1"
  network_acl_no = ncloud_vpc.dmzvpc.default_network_acl_no
  subnet_type    = "PUBLIC"
  usage_type = "GEN"
  // PUBLIC(Public) | PRIVATE(Private)
}

#LB 서브넷 생성용,서브넷의 ACL은 Default 사용, 차후 ACL은 보안과 협의하여 수정, LB의 경우 웹서버 구축 후 수동 생성 권장 


