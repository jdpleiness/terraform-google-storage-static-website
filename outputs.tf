output "self_link" {
    value = "${google_storage_bucket.bucket.self_link}"
}
output "url" {
    value = "${google_storage_bucket.bucket.url}"
}