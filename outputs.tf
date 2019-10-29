output "name" {
  description = "The name of the bucket"
  value       = google_storage_bucket.this.name
}

output "location" {
  description = "The GCS location of the bucket"
  value       = google_storage_bucket.this.location
}

output "storage_class" {
  description = "The Storage Class of the bucket"
  value       = google_storage_bucket.this.storage_class
}

output "versioning" {
  description = "The bucket's versioning configuration"
  value       = google_storage_bucket.this.versioning
}

output "url" {
  description = "The base URL of the bucket, in the format gs://<bucket-name>"
  value       = google_storage_bucket.this.url
}
