module "bucket"{
    source= "./storage"
    name          = var.bucket_name
    location      = var.location
    storage_class= var.storage_class
}