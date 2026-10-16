module "artifact_registry" {
  source = "../../modules/artifact-registry"

  repository_name = "devops-repo"
  region          = var.region
}

module "secret_manager" {
  source = "../../modules/secret-manager"

  secret_name = "app-secret"
}

module "cloud_run" {
  source = "../../modules/cloud-run"

  service_name = "frontend"
  region       = var.region

  image = "us-central1-docker.pkg.dev/${var.project_id}/devops-repo/frontend:latest"
}
