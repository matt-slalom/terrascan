package accurics

gkeControlPlaneNotPublic[api.id]{
    api := input.google_container_cluster[_]
    data := api.config.private_cluster_config[_]
    not data.enable_private_endpoint == true
}