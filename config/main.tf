# Create a Service Account
resource "google_service_account" "vm_service_account" {
  account_id   = "vm-service-account"
  display_name = "Service Account for VM"
}

# Assign roles to the service account (giving it permissions to manage compute instances)
resource "google_project_iam_binding" "vm_service_account_binding" {
  project = "arati-453310"  # Replace with your GCP project ID
  role    = "roles/compute.instanceAdmin"  # Role to manage compute instances
  members = [
    "serviceAccount:${google_service_account.vm_service_account.email}"
  ]
  
}

module "bucket"{
    source        = "../storage"
    bucket_name   = var.bucket_name
    location      = var.location
    storage_class = var.storage_class
}

module "network"{
    source            = "../network"
    vpc_name          = var.vpc_name
    region            = var.region
    subnet_name       = var.subnet_name
    subnet_ip_range   = var.subnet_ip_range
  
} 
module "vm"{
    source            = "../vm"
    vm_name           = var.vm_name
    machine_type      = var.machine_type 
    zone              = var.zone
    network_id        = module.network.vpc_id
    subnet            = module.network.subnet_id

     # Assign the service account to the VM
  service_account_email = google_service_account.vm_service_account.email
}
#Changed by dev2



