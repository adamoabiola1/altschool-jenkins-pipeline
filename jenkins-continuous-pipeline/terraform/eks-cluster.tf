module "eks" {
    source  = "terraform-aws-modules/eks/aws"
    version = "~> 19.0"
    cluster_name = "kube-eks-cluster"
    cluster_version = "1.25"

    cluster_endpoint_public_access  = true

    vpc_id = module.kube-vpc.vpc_id
    subnet_ids = module.kube-vpc.private_subnets

    tags = {
        environment = "development"
        application = "kube"
    }

    eks_managed_node_groups = {
        dev = {
            min_size = 2
            max_size = 4
            desired_size = 3

            instance_types = ["t2.small"]
        }
    }
}