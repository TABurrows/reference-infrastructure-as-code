
variable "project_name" {
    type = string
    description = "The name of the project in which to create the dataset"
}

variable "preferred_region" {
    type = string
    description = "The region to supply to terraform"
}

variable "preferred_zone" {
    type = string
    description = "The zone to supply to terraform"
}


variable "dataset_id" {
    type = string
    description = "The Dataset ID"
}  

variable "friendly_name" {
    type = string
    description = "The Friendly Name for the dataset"
}

variable "dataset_description" {
    type = string
    default = "Description for the dataset"
}

variable "dataset_location" {
    type = string
    default = "EU"
    description = "The location in which the dataset will be created"
}

variable "default_table_expiration" {
    type = number
    default = 3600000
    description = "Number value representing the ms that a table will exist before expiration"
}

variable "dataset_labels" {
    type = object({
        creator = string
        department = string
    })
    # default = object({})
    description = "The labels to apply to the dataset on creation"
}