resource "google_cloud_run_v2_service" "app" {
  name     = var.service_name
  location = var.region

  template {
    containers {
      image = var.image
    }
  }

  ingress = "INGRESS_TRAFFIC_ALL"
}
