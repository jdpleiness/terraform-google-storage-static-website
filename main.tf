resource "google_storage_bucket" "bucket" {
    name = "${var.bucket_name}"
    location = "${var.bucket_location}"
    project = "${var.project_id}"
    storage_class = "${var.bucket_storage_class}"

    versioning {
        enabled = "${var.bucket_versioning}"
    }

    website {
        main_page_suffix = "${var.main_page_suffix}"
        not_found_page = "${var.not_found_page}"
    }
}

resource "google_storage_default_object_acl" "default_obj_acl" {
    bucket = "${google_storage_bucket.bucket.name}"
    role_entity = ["${var.role_entity}"]

}