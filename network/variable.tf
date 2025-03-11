variable "vpc_name"{
    type= string
}

variable "subnet_name"{
    type= string
}

variable "region"{
    type= string
}

variable "subnet_ip_range"{
    type = string
    default =""
}

variable "vm_name"{
    type= string
}

variable "machine_type"{
    type= string
}

variable "zone"{
    type = string
}