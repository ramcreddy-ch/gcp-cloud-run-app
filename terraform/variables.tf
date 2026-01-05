variable "project_id" {
  description = "GCP Project ID"
}

variable "region" {
  description = "GCP Region"
  default     = "us-central1"
}

variable "service_name" {
  description = "Cloud Run Service Name"
  default     = "go-hello-world"
}

variable "image_name" {
  description = "Container Image URL (gcr.io/project/image)"
}
