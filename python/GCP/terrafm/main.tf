terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.24.0"
    }
  }
}
provider "google" {
  credentials = file("//home//hema//avian-altar-420316-2eb461c6f07a.json")
  project     = "avian-altar-420318"
  region      = "us-east1"
}

resource "google_storage_bucket" "vankaypullakoora" {
  name          = "vankaypullakoora"
  location      = "US"
  force_destroy = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    condition {
      age = 30
    }
    action {
      type = "Delete"
    }
  }
}

### we genaraate service account types then we  create key in gcp its containes project id