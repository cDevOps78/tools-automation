variable "tags" {
  default = {
    prometheus = {
      tags = {
        Name = "prometheus"
        Project = "expense-project"
      }
    }
    vault = {
      tags = {
        Name = "vault"
        Project = "expense-project"
      }
    }
  }
}

variable "vpc_security_group_ids" {
  default = ["sg-0a88820d7b4d3ff2a"]
}