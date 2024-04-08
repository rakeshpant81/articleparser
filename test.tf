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
resource "kubernetes_namespace" "test1" {
  metadata {
    name = "ms-test-ns"
  }
}
resource "null_resource" "example" {}
