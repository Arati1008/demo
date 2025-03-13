resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10-buster-v20201014"
    }
  }

  network_interface {
    network = var.network_id
    subnetwork = var.subnet
    access_config {
      // Automatically create an external IP
    }
}


  metadata_startup_script = <<-EOT
    #!/bin/bash
    echo "Hello, World!" > /var/log/startup-script.log
  EOT


# resource "google_service_account" "service_account" {
#   account_id   = "sa-test1"
#   display_name = "sa-test1"
# }
service_account {
    email  = var.service_account_email
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]  # Define necessary scopes
  }
}

# output "vm_instance" {
#   value = google_compute_instance.vm.name
# }
# output "vpc_id" {
#   value = google_compute_network.vpc.self_link
# }

# output "subnet_id" {
#   value = google_compute_subnetwork.subnet.self_link
# }

