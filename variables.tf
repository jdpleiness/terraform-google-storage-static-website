# Storage bucket variables
variable "bucket_name" {
  description = "Name of bucket that will store the static website. Should match your website domain name"
  type        = string
}

variable "bucket_location" {
  description = "Location of the bucket, should be a region or multi-region location depending on storage class choice."
  type        = string
  default     = "US"
}

variable "project" {
  description = "The project to deploy to, if not set the default provider project is used."
  type        = string
  default     = null
}

variable "bucket_storage_class" {
  description = "Storage class of the bucket that will store the static website"
  type        = string
  default     = "MULTI_REGIONAL"
}

variable "bucket_versioning" {
  description = "Enable/disable versioning for the bucket that will store the static website"
  type        = bool
  default     = false
}

variable "main_page_suffix" {
  description = "bucket's directory index where missing objects are treated as potential directories"
  type        = string
  default     = "index.html"
}

variable "not_found_page" {
  description = "The custom object to return when a requested resource is not found"
  type        = string
  default     = "404.html"
}

# Storage bucket default object ACLs variables
variable "role_entity" {
  description = "Sets bucket default object ACLs to allow all users read access to objects"
  type        = list(string)
  default     = ["READER:allUsers"]
}
