output "instance_public_id" {
    description= "The Public IP of EC2 instance"
    value= "aws_instance.Demo.public_ip"
}