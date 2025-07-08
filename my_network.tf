resource "google_compute_network" "mynetwork" {
  name                   = "mynetwork"
  auto_create_subnetworks = "true"
}

resource "google_compute_firewall" "mynetwork-allow-http-ssh-rdp-icmp" {
  name    = "mynetwork-allow-http-ssh-rdp-icmp"
  network = google_compute_network.mynetwork.self_link
  allow {
    protocol = "tcp"
    ports    = ["22", "80", "3389"]
  }

  allow {
    protocol = "icmp"
  }
  source_ranges = ["0.0.0.0/0"] //allow input from all over internet

}



//create mynet-vm-1 instance
module "mynet-vm-1" {
  source           = "./instance"
  instance_name    = "mynet-vm-1"
  instance_zone    = "us-central1-c"
  instance_network = google_compute_network.mynetwork.self_link
}

# Create the mynet-vm-2 instance
module "mynet-vm-2" {
  source           = "./instance"
  instance_name    = "mynet-vm-2"
  instance_zone    = "us-west1-b"
  instance_network = google_compute_network.mynetwork.self_link 
}
