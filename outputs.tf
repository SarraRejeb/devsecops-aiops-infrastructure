output "vm_name" {
  value = openstack_compute_instance_v2.vm.name
}

output "floating_ip" {
  value = openstack_networking_floatingip_v2.fip.address
}

output "internal_ip" {
  value = openstack_compute_instance_v2.vm.access_ip_v4
}
