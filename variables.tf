variable "project" {
  description = "The project ID to host the site in."
  type        = string
  default     = "cohesive-mile-340705"
}
variable "website_domain_name" {
  description = "The name of the website and the Cloud Storage bucket to create (e.g. static.foo.com)."
  type        = string
  default     = "archi22"
}
variable "website_location" {
  description = "Location of the bucket that will store the static website. Once a bucket has been created, its location can't be changed. See https://cloud.google.com/storage/docs/bucket-locations"
  type        = string
  default     = "US"
}
variable "website_storage_class" {
  description = "Storage class of the bucket that will store the static website"
  type        = string
  default     = "MULTI_REGIONAL"
}
variable "website_acls" {
  description = "Bucket default object ACLs to allow users access to objects, for example 'READER:allUsers'. See https://cloud.google.com/storage/docs/access-control/lists"
  type        = list(string)
  default     = ["READER:allUsers"]
}
variable "enable_versioning" {
  description = "Set to true to enable versioning. This means the website bucket will retain all old versions of all files. This is useful for backup purposes (e.g. you can rollback to an older version), but it may mean your bucket uses more storage."
  type        = bool
  default     = true
}
variable "index_page" {
  description = "Bucket's directory index"
  type        = string
  
}

variable "error_page" {
  description = "The custom object to return when a requested resource is not found"
  type        = string
  
}
variable "force_destroy_website" {
  description = "If set to true, this will force the delete of the website bucket when you run terraform destroy, even if there is still content in it. This is only meant for testing and should not be used in production."
  type        = bool
  default     = true
}
/*
variable "cloudflare" {
  type        = string
  default     = "naveenrocky83@gmail.com"
  description = "cloudflare email-id to config"
}
variable "cloudflare_api_key" {
  type        = string
  default     = "dcdcscsxsxsxs"
  description = "to allow to use cloudflare for request and respose"
}
variable "cloudflare_email" {
  type        = string
  default     = "naveenrocky83@gmail.com"
  description = "description"
}
variable "cloudflare_zone"  {
  type        = string
  description = "The DNS zone name which will be added."
  default     = "example.com"
}

variable "value" {
  type        = string
  default     = "owen-davies.github.io"
  description = "description"
}
variable "type" {
  type        = string
  default     = "CNAME"
  description = "description"
}
variable "proxied" {
  type        = bool
  default     = true
  description = "description"
}
variable "ttl" {
  type        = number
  default     = 3600
  description = "description"
}

variable "www-owendavies-net" {
  type        = string
  default     = "WWW"
  description = "description"
}
*/

