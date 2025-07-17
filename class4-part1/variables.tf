variable "region1" {
  default     = "us-east-1"
  type        = string
  description = "Provide region"
}

variable "key_name1" {
  default     = "my-key"
  type        = string
  description = "Provide key name"
}

variable "port" {
  default     = [22, 80]
  type        = list(number)
  description = "Provide port"
}

variable "ec2_web" {
  type = map(string)

  default = {
    ami_id = "ami-05ffe3c48a9991133"
    type   = "t2.micro"
    subnet = "subnet-04f2fd78749f0597a"
  }
}



