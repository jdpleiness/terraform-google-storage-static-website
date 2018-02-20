# Storage bucket variables
variable "bucket_name" {
    description = "Name of bucket that will store the static website. Should match your website domain name"
}

variable "bucket_location" {
    description = "Location of the bucket that will store the static website"
    default = "US"
}

variable "project_id" {
    description = "ID of the project where the bucket will be created"
}

variable "bucket_storage_class" {
    description = "Storage class of the bucket that will store the static website"
    default = "MULTI_REGIONAL"
}

variable "bucket_versioning" {
    description = "Enable/disable versioning for the bucket that will store the static website"
    default = false
}

variable "main_page_suffix" {
    description = "bucket's directory index where missing objects are treated as potential directories"
    default = "index.html"
}

variable "not_found_page" {
    description = "The custom object to return when a requested resource is not found"
    default = "404.html"
}

# Storage bucket default object ACLs variables
variable "role_entity" {
    description = "Sets bucket default object ACLs to allow all users read access to objects"
    type = "list"
    default = ["READER:allUsers"]
}