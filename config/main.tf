 module "bucket"{
    source        = "../storage"
    bucket_name   = var.bucket_name
    location      = var.location
    storage_class = var.storage_class
}

module "network"{
    source        = "../network"
    name          = var.vpc_name
}
