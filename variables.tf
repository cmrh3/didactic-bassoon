variable "resource_group_location" {
    default = "eastus"
    description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
    default = "rg"
    description = "Prefix of the resource group that's combined with a random ID so name is unique in your Azure Subscription"
}

variable "tenant_id" {
    type = string
}

variable "client_id" {
    type = string
}

variable "client_secret" {
    type = string
}

variable "subscription_id" {
    type = string
}