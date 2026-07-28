#ap1 이용자 WEB VM NIC
resource "ncloud_network_interface" "nic1" {
    name                  = var.serverinfo.key1.servername
    subnet_no             = ncloud_subnet.subnet_web1.id
    private_ip            = var.serverinfo.key1.ip
    access_control_groups = [ncloud_vpc.dmzvpc.default_access_control_group_no]
}

#ap1 가맹자 WEB VM NIC
resource "ncloud_network_interface" "nic2" {
    name                  = var.serverinfo.key2.servername
    subnet_no             = ncloud_subnet.subnet_web1.id
    private_ip            = var.serverinfo.key2.ip
    access_control_groups = [ncloud_vpc.dmzvpc.default_access_control_group_no]
}

#ap2 이용자 WEB VM NIC
resource "ncloud_network_interface" "nic3" {
    name                  = var.serverinfo.key3.servername
    subnet_no             = ncloud_subnet.subnet_web2.id
    private_ip            = var.serverinfo.key3.ip
    access_control_groups = [ncloud_vpc.dmzvpc.default_access_control_group_no]
}

#ap2 가맹자 WEB VM NIC
resource "ncloud_network_interface" "nic4" {
    name                  = var.serverinfo.key4.servername
    subnet_no             = ncloud_subnet.subnet_web2.id
    private_ip            = var.serverinfo.key4.ip
    access_control_groups = [ncloud_vpc.dmzvpc.default_access_control_group_no]
}

#ap 이용자 개발 WEB VM NIC
resource "ncloud_network_interface" "nic5" {
    name                  = var.serverinfo.key5.servername
    subnet_no             = ncloud_subnet.subnet_devweb.id
    private_ip            = var.serverinfo.key5.ip
    access_control_groups = [ncloud_vpc.dmzvpc.default_access_control_group_no]
}

#ap 가맹자 개발 WEB VM NIC
resource "ncloud_network_interface" "nic6" {
    name                  = var.serverinfo.key6.servername
    subnet_no             = ncloud_subnet.subnet_devweb.id
    private_ip            = var.serverinfo.key6.ip
    access_control_groups = [ncloud_vpc.dmzvpc.default_access_control_group_no]
}


data "ncloud_server_image_numbers" "kvm-image" {
  server_image_name = "rocky-8.10-base"
  filter {
    name = "hypervisor_type"
    values = ["KVM"]
  }
}

data "ncloud_server_specs" "kvm-2c4g" {
  filter {
    name   = "server_spec_code"
    values = ["c2-g3a"]
  }
}
/***
data "ncloud_server_specs" "kvm-4c8g" {
  filter {
    name   = "server_spec_code"
    values = ["c4-g3a"]
  }
}

data "ncloud_server_specs" "kvm-4c16g" {
  filter {
    name   = "server_spec_code"
    values = ["s4-g3a"]
  }
}

data "ncloud_server_specs" "kvm-8c32g" {
  filter {
    name   = "server_spec_code"
    values = ["s8-g3a"]
  }
}
***/

#ewa web #01
resource "ncloud_server" "ewaweb1" {
  subnet_no = ncloud_subnet.subnet_web1.id
  name = var.serverinfo.key1.servername
  server_image_number = var.serverinfo.key1.serverimageno
  server_spec_code = data.ncloud_server_specs.kvm-2c4g.server_spec_list.0.server_spec_code
  login_key_name = var.name_pemkey
  network_interface {
    network_interface_no = ncloud_network_interface.nic1.id
    order = 0
  }
}


#awa web #01
resource "ncloud_server" "awaweb1" {
  subnet_no = ncloud_subnet.subnet_web1.id
  name = var.serverinfo.key2.servername
  server_image_number = var.serverinfo.key2.serverimageno
  server_spec_code = data.ncloud_server_specs.kkvm-2c4g.server_spec_list.0.server_spec_code
  login_key_name = var.name_pemkey
  network_interface {
    network_interface_no = ncloud_network_interface.nic2.id
    order = 0
  }
}

#ewa web #02
resource "ncloud_server" "ewaweb2" {
  subnet_no = ncloud_subnet.subnet_web2.id
  name = var.serverinfo.key3.servername
  server_image_number = var.serverinfo.key3.serverimageno
  server_spec_code = data.ncloud_server_specs.kvm-2c4g.server_spec_list.0.server_spec_code
  login_key_name = var.name_pemkey
  network_interface {
    network_interface_no = ncloud_network_interface.nic3.id
    order = 0
  }
}

#awa web #02
resource "ncloud_server" "awaweb2" {
  subnet_no = ncloud_subnet.subnet_web2.id
  name = var.serverinfo.key4.servername
  server_image_number = var.serverinfo.key4.serverimageno
  server_spec_code = data.ncloud_server_specs.kvm-2c4g.server_spec_list.0.server_spec_code
  login_key_name = var.name_pemkey
  network_interface {
    network_interface_no = ncloud_network_interface.nic4.id
    order = 0
  }
}

#ewa dev web  
resource "ncloud_server" "devewaweb" {
  subnet_no = ncloud_subnet.subnet_devweb.id
  name = var.serverinfo.key5.servername
  server_image_number = var.serverinfo.key5.serverimageno
  server_spec_code = data.ncloud_server_specs.kvm-2c4g.server_spec_list.0.server_spec_code
  login_key_name = var.name_pemkey
  network_interface {
    network_interface_no = ncloud_network_interface.nic5.id
    order = 0
  }
}

#awa dev web
resource "ncloud_server" "devawaweb" {
  subnet_no = ncloud_subnet.subnet_devweb.id
  name = var.serverinfo.key6.servername
  server_image_number = var.serverinfo.key6.serverimageno  
  server_spec_code = data.ncloud_server_specs.kvm-2c4g.server_spec_list.0.server_spec_code
  login_key_name = var.name_pemkey
  network_interface {
    network_interface_no = ncloud_network_interface.nic6.id
    order = 0
  }
}








