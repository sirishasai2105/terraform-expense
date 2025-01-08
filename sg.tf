module "mysql_security_group" {
    source =  "../terraform-aws-security-group"
    project_name = var.project_name
    environment = var.environment
    sg_tags = "mysql"
    mysql_sg_tags = var.mysql_sg_tags
    vpc_id = module.vpc.vpc_id
}