resource "aws_instance" "Demo" {
    ami = var.ami_id
    instance_type= var.instance_type
    tags= {
    Name= "Terraform EC2"
}
    key_name= var.key_name
    vpc_security_group_ids = [aws_security_group.sg.id]
}

resource "aws_security_group" "sg" {
    name= "Terraform_sg"
    description= "Allow traffic"

    ingress {
        from_port= 22
        to_port= 22
        protocol= "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port= 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

