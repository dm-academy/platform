variable "region" {
  default = "us-central1-a" // We're going to need it in several places in this config
}

provider "google" {
  credentials = "${file("credentials.json")}"
  project     = "gke-project-237405"
  region      = "${var.region}"
}
