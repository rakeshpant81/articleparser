terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
  }
}

provider "kubernetes" {
  config_path = "~/cloudify-cluster.yaml"
}
resource "kubernetes_namespace" "test" {
  metadata {
    name = "ms-test-ns"
  }
}
