variable "region"{
    type     = string
    default  = "us-central1" 
}

variable "bucket_name"{
    type     = string
    default  = " "
}

variable "location"{
    type     = string
    default  = "us-central1"
}

variable "storage_class"{
    type     = string
    default  = "STANDARD"
}

variable "vpc1"{
    type= string
}

variable "subnet1"{
    type= string
}

variable "region"{
    type= string
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