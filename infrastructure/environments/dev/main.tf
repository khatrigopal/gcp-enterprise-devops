module "artifact_registry" {
  source = "../../modules/artifact-registry"

  repository_name = "devops-repo"
  region          = var.region
}


module "secret_manager" {
  source = "../../modules/secret-manager"

  secret_name = "app-secret"
}

module "iam" {
  source = "../../modules/iam"

  project_id = var.project_id
  member     = "serviceAccount:github-actions-sa@${var.project_id}.iam.gserviceaccount.com"
}
