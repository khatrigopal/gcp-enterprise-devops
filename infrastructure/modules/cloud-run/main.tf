resource "google_cloud_run_v2_service" "app" {

  name     = var.service_name
  location = var.region

  lifecycle {
    ignore_changes = [
      template[0].containers[0].image
    ]
  }

  ingress = "INGRESS_TRAFFIC_ALL"

  template {

    scaling {
      min_instance_count = 0
      max_instance_count = 2
    }

    containers {

      image = var.image

      resources {
        limits = {
          cpu    = "1"
          memory = "512Mi"
        }
      }
    }
  }
}

resource "google_cloud_run_v2_service_iam_member" "public" {

  location = var.region
  name     = google_cloud_run_v2_service.app.name

  role   = "roles/run.invoker"
  member = "allUsers"
}
