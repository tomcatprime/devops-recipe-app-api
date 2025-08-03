variable "perfix" {
    description = "Prefix for resources in AWS"
    default = "raa"
}

variable "project" {
    description = "Project name for tagging resources"
    default = "recipe-app-api"
  
}


variable "contact" {
  description = "Contact email for tagging resources"
  default = "admin@up2cloud.one"

}