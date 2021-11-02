# Creation du serveur virtuel
# Create a virtual server with the SSH key
# https://ibm-cloud.github.io/tf-ibm-docs/v0.9.1/r/compute_vm_instance.html

resource "ibm_compute_vm_instance" "instana" {
  hostname            = "instana"
  domain              = "opencley.com"
  ssh_key_ids         = [ibm_compute_ssh_key.instana_key.id]

  ## Récuperation de l'image ID dans l'URL de l'image quand on clique dessus depuis le portail IBM Devices > Manage > Images
  ## To retrieve the image template ID from the IBM Cloud infrastructure customer portal, navigate to Devices > Manage > Images, click the image that you want, and note the ID number in the resulting URL.
  ## https://cloud.ibm.com/gen1/infrastructure/image-templates/$(image_id)/details#main
  #image_id           = "1354507"
  os_reference_code   = "CENTOS_7_64"
  datacenter          = "par01"
  network_speed       = 100
  cores               = 16
  memory              = 65536
  #local_disk          = false
  #disks               = [150]
  tags                = [
    "instana",
    "ibmcloud",
    "self-hosted"
  ]
  public_security_group_ids = [ibm_security_group.instana_sg.id]
}

