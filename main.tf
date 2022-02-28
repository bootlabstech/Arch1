resource "google_storage_bucket" "website" {
  project       = var.project
  name          = var.website_domain_name
  location      = var.website_location
  storage_class = var.website_storage_class
  force_destroy = var.force_destroy_website
 
  versioning {
    enabled     = var.enable_versioning
  }

  website {
    main_page_suffix = var.index_page
    not_found_page   = var.error_page
  }
}
resource "google_storage_bucket_object" "content" {
  name = var.index_page
  source = var.index_page
  bucket = var.website_domain_name

  depends_on = [google_storage_bucket.website]
}
resource "google_storage_bucket_object" "error" {
  name = var.error_page
  source = var.error_page
  bucket = var.website_domain_name

  depends_on = [google_storage_bucket.website]
}

resource "google_storage_default_object_acl" "website_acl" {
  bucket      = google_storage_bucket.website.name
  role_entity = var.website_acls
}

/*
# Add a record to the domain

resource "cloudflare_record" "owendavies-net" {
  zone_id = var.cloudflare_zone_id
  name = "owendavies.net"
  value = var.value
  type = var.type
  proxied = var.proxied
  ttl = var.ttl
}

resource "cloudflare_record" "www-owendavies-net" {
  zone_id = var.cloudflare_zone_id
  name = var.www-owendavies-net
  value = "owen-davies.github.io" or 192.2.2.2
  type = var.type
  proxied = var.proxied
  ttl = 1
}
*/

