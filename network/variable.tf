variable "vpc_name"{
    type= string
}

variable "subnet_name"{
    type= string
}

variable "region"{
    type= string
}

# variable "vm_name"{
#     type= string
# }

# variable "machine_type"{
#     type= string
# }

# variable "zone"{
#     type = string
# }

variable "subnet_ip_range"{
    type = string
    default =""
}