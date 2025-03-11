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
    vm_name           = var.vm_name
    machine_type      = var.machine_type 
    zone              = var.zone
} 



