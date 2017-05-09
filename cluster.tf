provider "ibmcloud" {
 ibmid = "vkalangu@in.ibm.com"
 ibmid_password = ""
  softlayer_account_number = "xxx"
}

resource "ibmcloud_cs_cluster" "testacc_cluster" {
    name = "davet-test"
    datacenter = "dal10"
    machine_type = "free"
    isolation = "public"
    public_vlan_id = "vlan"
    private_vlan_id = "vlan"
    workers = [{name="worker1",  action="add"},]
    org_guid = "davetropeano@us.ibm.com"
	space_guid = "dev"
	account_guid = "davetropeano@us.ibm.com"
}
