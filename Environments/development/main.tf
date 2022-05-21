module "vpc-dev" {
    source = "../../Resources/vpc"
    vpc_cidr     = "10.0.0.0/16"
    subnet_cidr  = "10.0.0.0/24"
    project_name = "dev-website"
}

module "ec2-dev" {
    source = "../../Resources/ec2"
    ami           = "ami-0022f774911c1d690"
    project_name  = "dev-website"
    instance_type = "t2.small"
    subnet_id     = module.vpc-dev.id_subnet
}