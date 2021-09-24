provider "google" {
  credentials = var.credentials
  project = "just-amp-325919"
  region  = "us-central1"
}

resource "google_storage_instance" "vm_instance" {
  name     = "demo4"
  machine  = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

  }
}
