terraform {
  required_version = ">= 0.13"

  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }
}

provider "kubectl" {
  config_context_cluster  = "kind-hussein-kind-cluster"
  config_path = "../config/kubeconfig"
}

resource "kubectl_manifest" "nodejs_app" {
  yaml_body = file("kube.yaml")
}