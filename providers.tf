terraform {
  required_providers {
    google = {
      version = "~> 4.6.0" 
      source  = "hashicorp/google"
    }
    cloudflare = {
      version = "~> 3.0"
      source  = "cloudflare/cloudflare"
    }
  }
}
/*
provider "cloudflare" {
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}
*/