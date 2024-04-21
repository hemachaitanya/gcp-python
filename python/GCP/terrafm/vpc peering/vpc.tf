# main.tf
terraform {
  required_providers {
    google-beta = {
      source = "hashicorp/google-beta"
      version = "5.24.0"
    }
  }
}

provider "google" {
  project = "avian-altar-420318"
  region  = "us-west1"
  credentials = file("//home//ubuntu//cred.json")
  alias = "west"
}

resource "google_compute_network" "hema" {
  provider = google.west
  name                    = "vpc-us-west"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet_us_west" {
    provider  =  google.west
  name          = "subnet-us-west"
  ip_cidr_range = "192.168.0.0/24"
  network       = google_compute_network.hema.self_link
  region        = "us-west1"
}

resource "google_compute_firewall" "allow_http" {
    provider = google.west
  name    = "allow-http"
  network = google_compute_network.hema.self_link

  allow {
    protocol = "tcp"
    ports    = ["80" , "8080" , "22" , "1000-2000"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_instance" "hema-instance" {
  provider   =  google.west
  name         = "vm-us-west"
  machine_type = "e2-standard-4"
  zone         = "us-west1-a"
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }
  network_interface {
    network = google_compute_network.hema.self_link
    subnetwork = google_compute_subnetwork.subnet_us_west.self_link
    access_config {
    }
  }
}

provider "google" {
  alias   = "us_east"
  project = "avian-altar-420318"
  credentials = file("//home//ubuntu//cred.json")
  region  = "us-east1"
}

resource "google_compute_network" "chaitu" {
  provider                = google.us_east
  name                    = "vpc-us-east"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet_us_east" {
  provider        = google.us_east
  name            = "subnet-us-east"
  ip_cidr_range   = "172.31.0.0/24"
  network         = google_compute_network.chaitu.self_link
  region          = "us-east1"
}

resource "google_compute_firewall" "allow_http_us_east" {
  provider = google.us_east
  name     = "allow-http-us-east"
  network  = google_compute_network.chaitu.self_link

  allow {
    protocol = "tcp"
    ports    = ["80" , "22" , "8080" , "1000-2000"]
  }

  source_ranges = ["0.0.0.0/0"]
 }
resource "google_compute_instance" "ram" {
  provider     = google.us_east
  name         = "vm-us-east"
  machine_type = "e2-standard-4"
  zone         = "us-east1-b"
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }
  network_interface {
    network = google_compute_network.chaitu.self_link
    subnetwork = google_compute_subnetwork.subnet_us_east.self_link
    access_config {
    }
  }
}

resource "google_compute_global_address" "vpc_peering_address" {
  name                  = "vpc-peering-address"
  purpose               = "VPC_PEERING"
  address_type          = "INTERNAL"
  prefix_length         = 16
  network               = google_compute_network.hema.name
  project               = "avian-altar-420318"
}

resource "google_compute_global_address" "vpc_peering_address_us_east" {
  provider              = google.us_east
  name                  = "vpc-peering-address-us-east"
  purpose               = "VPC_PEERING"
  address_type          = "INTERNAL"
  prefix_length         = 16
  network               = google_compute_network.chaitu.name
  project               = "avian-altar-420318"
}

resource "google_compute_network_peering" "vpc_peering" {
  network                 = google_compute_network.hema.self_link
  peer_network            = google_compute_network.chaitu.self_link 
  export_custom_routes    = true
  import_custom_routes    = true
  name                    = "vpc-peering"
}

resource "google_compute_route" "route_to_peer" {
  dest_range              = google_compute_subnetwork.subnet_us_east.ip_cidr_range
  name                    = "route-to-peer"
  network                 = google_compute_network.hema.self_link
  priority                = 1000
 }

resource "google_compute_route" "route_to_peer_us_east" {
  provider                = google.us_east
  dest_range              = google_compute_subnetwork.subnet_us_west.ip_cidr_range
  name                    = "route-to-peer-us-east"
  network                 = google_compute_network.chaitu.self_link
  priority                = 1000
  next_hop_ip             = google_compute_global_address.vpc_peering_address.address
}
