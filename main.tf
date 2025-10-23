module "frontend" {
    depends_on = [ module.backend ]
    source = "git::https://github.com/DRT9999/tf-module-terraform.git"
    instance_type = var.comp["frontend"][instance_type]
        name = 1
        env= 1
        port_no= 1
}

module "backend" {
    depends_on = [ module.mysql ]
    source = "git::https://github.com/DRT9999/tf-module-terraform.git"
    instance_type = 1
        name =1
        env=1
        port_no=1
}

module "mysql" {

    source = "git::https://github.com/DRT9999/tf-module-terraform.git"
    instance_type =1
        name =1
        env=1
        port_no=1
}





