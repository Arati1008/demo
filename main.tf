resource "google_storage_bucket" "my_bucket" {
  name          = var.bucket_name
  region      = var.region
  storage_class= var.storage_class

  versioning{
    enabled=true
  }

  lifecyle {
    prevent_destroy = true
  }
}