variable "vm_name"{
    type= string
}

variable "machine_type"{
    type= string
}

variable "zone"{
    type = string
}

variable "network_id" {
    type = string
  }

variable "subnet" {
    type = string
  }

variable "service_account_email" {
  description = "Email of the service account to be assigned to the VM"
  type        = string
}