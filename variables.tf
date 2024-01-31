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
  description = "GitHub org name"
}

variable "repo" {
  type        = string
  description = "GitHub repository name"
}

variable "ref" {
  type        = string
  description = "GitHub ref(branch, tag, or commit ID)"
  default     = "*"
}
