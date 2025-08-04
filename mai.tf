 [START compute_instances_quickstart]
resource "google_compute_instance" "default" {
  name         = "vm_example"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-2210-kinetic-amd64-v20230126"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}