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

variable "vpc_name"{
    type= string
}

variable "subnet_name"{
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

variable "subnet_ip_range"{
    type = string
    default= ""
}

variable "service_account_email" {
  description = "Email of the service account to be assigned to the VM"
  type        = string
}