 module "bucket"{
    source= "../storage"
    bucket_name   = var.bucket_name
    location      = var.location
    storage_class= var.storage_class
}

module "bucket"{
    source= "../network"
    bucket_name   = var.bucket_name
    location      = var.location
    storage_class= var.storage_class
}
