resource "aws_instance" "web" {
    count           = var.ec2_count
    ami             = var.ami_id
    instance_type   = "t2.micro"
    key_name        = var.deep
    subnet_id       = var.subnet_id       #vpc_security_group_ids = [ "${aws_security_group.web_node.id}" ]
    vpc_security_group_ids      = var.sg_id
    associate_public_ip_address = "true"
    
    tags = {
      Name = "webserver"
    }
     

 
}

