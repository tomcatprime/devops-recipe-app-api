variable "tf_state_bucket" {
  description = "Name of S3 bucket in AWS for storing TF state"
  default     = "tomcat-devops-labs-tf"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "recipe-app-api"

}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "admin@up2cloud.one"

}