terraform {
  backend "gcs" {
    bucket  = "notejamarul-tfstate"
    prefix  = "terraform/state"
  }
}

provider "google" {
  project = var.project_name
  region  = var.region
  zone    = var.zone
}

provider "google-beta" {
  project = var.project_name
  region  = var.region
  zone    = var.zone
}

