resource "google_artifact_registry_repository" "repo" {

  #checkov:skip=CKV_GCP_84: Demo project using Google managed encryption

  location      = var.region
  repository_id = var.repository_name
  description   = "Enterprise DevSecOps Docker Repository"
  format        = "DOCKER"
}
