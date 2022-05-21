module "vpc-stg" {
    source = "../../Resources/vpc"
    vpc_cidr     = "10.10.0.0/16"
    subnet_cidr  = "10.10.0.0/24"
    project_name = "stg-website"
}

module "ec2-stg" {
    source = "../../Resources/ec2"
    ami           = "ami-0022f774911c1d690"
    project_name  = "stg-website"
    instance_type = "t2.small"
    subnet_id     = module.vpc-stg.id_subnet
}