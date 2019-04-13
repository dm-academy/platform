resource "google_container_cluster" "gke-cluster" {
  name               = "my-first-gke-cluster"
  network            = "default"
  zone               = "us-central1-a"
  initial_node_count = 3
  node_config {
    machine_type = "n1-standard-2"
    tags = ["http-server", "https-server"]
  }
}
