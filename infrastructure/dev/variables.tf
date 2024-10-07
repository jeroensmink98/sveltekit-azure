variable "environment" {
  description = "The environment to deploy to"
  default     = "dev"
}

variable "default_location" {
  description = "The location to deploy to"
  default     = "westeurope"
}

variable "subscription_id" {
  description = "The subscription id to deploy to"
}