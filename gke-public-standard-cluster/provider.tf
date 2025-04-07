terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.28.0"
    }
  }
  backend "gcs" {
    bucket = "gke-terraform-bucket-454719"
    prefix = "gke-terraform/statefile"  
  }
}

provider "google" {
  project = var.project
  region = var.region
}
