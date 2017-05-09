provider "ibmcloud" {
  ibmid = "${var.ibmid}"
  ibmid_password = "${var.ibmidpw}"
  softlayer_account_number = "${var.slaccountnum}"
}

resource "ibmcloud_cs_cluster" "testacc_cluster" {
    name = "davet-test"
    datacenter = "dal10"
    machine_type = "free"
    isolation = "public"
    public_vlan_id = "vlan"
    private_vlan_id = "vlan"
    workers = [{name="worker1",  action="add"},]
    org_guid = "a9a870d8-ea0a-4bb0-9fa7-b4c065f38e2c"
	space_guid = "84c26baa-1e8d-44e1-9e53-3ed9a2755eb3"
	account_guid = "48fcf7b82234c9a3f64ac55471beb2f0"
}
