module "vpc" {
    source = ".//modules//vpc"
    vpc_id = "${module.vpc.vpc_id}"
}
module "instance" {
    source    = ".//modules//instance"
    sg_id     = [ "${module.security.aws_security_gr_id}" ]
    subnet_id = "${module.vpc.subnet_id}"
    
}
module "security" {
   source = ".//modules//security"
   vpc_id = "${module.vpc.vpc_id}"
   
}

module "keyfile" {
    source = ".//modules//keyfile"
}

