resource "google_storage_bucket" "this" {
  name          = var.bucket_name
  location      = var.bucket_location
  project       = var.project
  storage_class = var.bucket_storage_class

  versioning {
    enabled = var.bucket_versioning
  }

  website {
    main_page_suffix = var.main_page_suffix
    not_found_page   = var.not_found_page
  }
}

resource "google_storage_default_object_acl" "this" {
  bucket      = google_storage_bucket.this.name
  role_entity = [var.role_entity]
}
