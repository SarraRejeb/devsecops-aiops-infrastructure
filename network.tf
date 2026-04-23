data "openstack_networking_network_v2" "public" {
  name = "public"
}

resource "openstack_networking_network_v2" "tenant_net" {
  name           = "${var.prefix}-tf-tenant-net"
  admin_state_up = true
}

resource "openstack_networking_subnet_v2" "subnet" {
  name            = "${var.prefix}-tf-subnet"
  network_id      = openstack_networking_network_v2.tenant_net.id
  cidr            = "10.10.20.0/24"
  ip_version      = 4
  dns_nameservers = ["8.8.8.8"]
}

resource "openstack_networking_router_v2" "router" {
  name                = "${var.prefix}-tf-router"
  admin_state_up      = true
  external_network_id = data.openstack_networking_network_v2.public.id
}

resource "openstack_networking_router_interface_v2" "router_iface" {
  router_id = openstack_networking_router_v2.router.id
  subnet_id = openstack_networking_subnet_v2.subnet.id
}
