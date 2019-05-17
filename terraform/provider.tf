provider "google" {
  credentials = "${file("..//credentials//credentials.json")}"
  project     = "${var.project_id}"
  region      = "${var.region}"
}
