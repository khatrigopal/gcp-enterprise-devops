module "artifact_registry" {
  source = "../../modules/artifact-registry"

  repository_name = "devops-repo"
  region          = var.region
}


module "secret_manager" {
  source = "../../modules/secret-manager"

  secret_name = "app-secret"
}
