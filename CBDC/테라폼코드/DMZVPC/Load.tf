
#PRIVATE ALB 생성
resource "ncloud_lb" "ewaalbweb" {
  name = var.lbinfo.key1.lbname
  network_type = var.lbinfo.key1.network_type
  type = var.lbinfo.key1.type
  subnet_no_list = [ ncloud_subnet.subnet_prvlb.subnet_no ]
}

resource "ncloud_lb" "awaalbweb" {
  name = var.lbinfo.key2.lbname
  network_type = var.lbinfo.key2.network_type
  type = var.lbinfo.key2.type
  subnet_no_list = [ ncloud_subnet.subnet_prvlb.subnet_no ]
}

resource "ncloud_lb" "wafalb" {
  name = var.lbinfo.key3.lbname
  network_type = var.lbinfo.key3.network_type
  type = var.lbinfo.key3.type
  subnet_no_list = [ ncloud_subnet.subnet_waflb.subnet_no ]
}

resource "ncloud_lb" "devewaalbweb" {
  name = var.lbinfo.key4.lbname
  network_type = var.lbinfo.key4.network_type
  type = var.lbinfo.key4.type
  subnet_no_list = [ ncloud_subnet.subnet_devlb.subnet_no ]
}

resource "ncloud_lb" "devawaalbweb" {
  name = var.lbinfo.key5.lbname
  network_type = var.lbinfo.key5.network_type
  type = var.lbinfo.key5.type
  subnet_no_list = [ ncloud_subnet.subnet_devlb.subnet_no ]
}


