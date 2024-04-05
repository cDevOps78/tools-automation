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
        Name = "Vault"
        Project = "expense-project"
      }
    }
  }
}