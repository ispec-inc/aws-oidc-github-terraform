variable "role_name" {
  type        = string
  description = "iam role name"
}

variable "policy_name" {
  type        = string
  description = "iam policy name"
}

variable "policy_json" {
  type        = string
  description = "iam policy document json"
}

variable "org" {
  type        = string
  description = "github org name"
}

variable "repo" {
  type        = string
  description = "github repository name"
}

variable "ref_prefix" {
  type        = string
  description = "git branch ref prefix"
  default     = "*"
}
