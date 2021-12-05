resource "google_storage_bucket" "test_bucket" {
  name          = var.bucket_name
  location      = "US"
  force_destroy= true
  versioning {
    enabled = true
  }
  count = var.bucket_name == null ? 0 : 1
}