module "vpc-prd" {
    source = "../../Resources/vpc"
    vpc_cidr     = "10.20.0.0/16"
    subnet_cidr  = "10.20.0.0/24"
    project_name = "prd-website"
}

module "ec2-prd" {
    source = "../../Resources/ec2"
    ami           = "ami-0022f774911c1d690"
    project_name  = "prd-website"
    instance_type = "t2.small"
    subnet_id     = module.vpc-prd.id_subnet
}