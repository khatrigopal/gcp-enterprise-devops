module "artifact_registry" {
  source = "../../modules/artifact-registry"

  repository_name = "devops-repo"
  region          = var.region
}
