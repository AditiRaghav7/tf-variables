terraform {
required_providers {
aws = {
       source = "hashicorp/aws"
       version = "5.54.1"
     }
    }
   }
provider "aws" {
                region = "eu-north-1"
               }

resource "aws"_instance" "myserver"{
     ami = "ami-0b02608ac063c1939"
      instance_type = var.aws_instance_type  
 }

root_block_device {
delete_on_termination = true 
volume_size = var.root_volume_size  //var.ec2_config.v_size
volume_type = var.root_volume_type  //var.ec2_config.v_type
}


tags = {
 Name = "sampleServer"
}
}
