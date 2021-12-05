variable "instance_count" {
  default = 1
}

variable "instance_name" {
  type = string 
}

variable "instance_machinetype" {
  default = "e2-medium"
}

variable "bucket_name" {
  type = string 
  default = null
}