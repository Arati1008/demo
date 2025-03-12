output "vpc_id" {
  value = google_compute_network.vpc_network.self_link
}

output "subnet_id" {
  value = google_compute_subnetwork.subnet.self_link
}