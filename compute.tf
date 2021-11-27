resource "google_compute_instance" "vm_instance" {
  count = var.instance_count
  name         = "${var.instance_name}-${count.index}"
  machine_type = var.instance_machinetype
  zone         = "us-central1-a"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}