variable "aws_instance_type" {
  description = "Instance type"
  type        = string
  validation {
    condition     = var.aws_instance_type == "t3.micro" || var.aws_instance_type == "t3.medium"
    error_message = "Only t3.micro and t3.medium are allowed."
  }
}

variable "root_volume_size" {
  type    = number
  default = 20                           
}

variable "root_volume_type" {
  type    = string
  default = "gp2"                       
}


// the above two can be replaced by
// variable "ec2_config"{
// type = objrct ({
//    v_size = number 
//    v_type = string 
// })
// default = {
//     v_size = 20 
//    v_type = "gp2"
//  }
// }
