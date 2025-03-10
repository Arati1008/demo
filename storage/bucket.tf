resource "google_storage_bucket" "my_bucket" {
  name          = var.bucket_name
  location      = var.location
  storage_class= var.storage_class

  versioning{
    enabled=true
  }
}