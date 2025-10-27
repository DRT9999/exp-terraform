module "frontend" {
    depends_on = [ module.backend ]
    source = "git::https://github.com/DRT9999/tf-module-terraform.git"
    instance_type = var.comp["frontend"]["instance_type"]
    name = var.comp["frontend"]["name"]
    env= var.env
    port_no= var.comp["frontend"]["port_no"]
    promethus_node =var.prometheus_node

}

module "backend" {
    depends_on = [ module.mysql ]
    source = "git::https://github.com/DRT9999/tf-module-terraform.git"
    instance_type = var.comp["backend"]["instance_type"]
    name = var.comp["backend"]["name"]
    env= var.env
    port_no= var.comp["backend"]["port_no"]
    promethus_node =var.prometheus_node

}

module "mysql" {

    source = "git::https://github.com/DRT9999/tf-module-terraform.git"
    instance_type = var.comp["mysql"]["instance_type"]
        name = var.comp["mysql"]["name"]
        env= var.env
        port_no= var.comp["mysql"]["port_no"]
        promethus_node =var.prometheus_node

}





