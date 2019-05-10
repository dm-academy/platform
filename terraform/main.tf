# create cluster
module "my_cluster" {
  source             = "./cluster"
  name               = "${var.name}"
  description        = "${var.description}"
  zone               = "${var.zone}"
  initial_node_count = "${var.initial_node_count}"
  network            = "default"
}

