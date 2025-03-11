resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_ip_range
  region        = var.region
  network       = google_compute_network.vpc_network.id

}

# Create a firewall rule to allow SSH  (port 22)
resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

# Create a VM instance within the VPC
# resource "google_compute_instance" "vm_instance" {
#   name         = var.vm_name
#   machine_type = var.machine_type
#   zone         = var.zone
  
#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-10-buster-v20201014"
#     }
#   }

#   network_interface {
#     network = google_compute_network.vpc_network.self_link
#     subnetwork = google_compute_subnetwork.subnet.self_link
#     access_config {
#       // Automatically create an external IP
#     }
#   }

#   metadata_startup_script = <<-EOT
#     #!/bin/bash
#     echo "Hello, World!" > /var/log/startup-script.log
#   EOT
# }