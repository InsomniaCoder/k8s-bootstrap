resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
  }
}

resource "helm_release" "argocd" {
  name       = "argocd"
  chart      = "argo-cd"
  repository = "https://argoproj.github.io/argo-helm"
  version    = "5.53.12"
  namespace  = "argocd"
  timeout    = "1200"
  values     = [templatefile("./argocd/values.yaml", {})]
}

resource "kubernetes_manifest" "boostrap_argo" {
  manifest = yamldecode(file("${path.module}/argocd/bootstrap.yaml"))
}