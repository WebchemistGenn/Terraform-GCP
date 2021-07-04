resource "google_compute_instance" "default" {
  name         = "genn-coding"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      # image = "debian-cloud/debian-9"
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
      size  = 30
    }
  }

  network_interface {
    network = "${google_compute_network.vpc_network.self_link}"
    access_config {
      nat_ip = "${google_compute_address.vm_static_ip.address}"
    }
  }
}
resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = true
}

resource "google_compute_firewall" "default" {
  name = "terraform-firewall"
  network = "${google_compute_network.vpc_network.name}"

  allow {
    protocol = "tcp"
  }
}

resource "google_compute_address" "vm_static_ip" {
  name = "terraform-static-ip"
}