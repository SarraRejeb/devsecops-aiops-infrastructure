resource "openstack_compute_instance_v2" "vm" {
  name            = "${var.prefix}-tf-vm"
  image_name      = var.image_name
  flavor_name     = var.flavor_name
  key_pair        = var.keypair_name
  security_groups = [openstack_networking_secgroup_v2.sg.name]

  network {
    uuid = openstack_networking_network_v2.tenant_net.id
  }
}

resource "openstack_networking_floatingip_v2" "fip" {
  pool      = "public"
  subnet_id = var.routed_subnet_id
}

resource "openstack_compute_floatingip_associate_v2" "fip_assoc" {
  floating_ip = openstack_networking_floatingip_v2.fip.address
  instance_id = openstack_compute_instance_v2.vm.id
}
