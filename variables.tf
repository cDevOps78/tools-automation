variable "tags" {
  default = {
    prometheus = {
      tags = {
        Name = "prometheus"
        Project = "expense-project"
      }
    }
  }
}