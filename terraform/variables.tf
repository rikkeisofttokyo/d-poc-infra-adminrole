variable "tags" {
  description = "A map of tags to add to all resources"
  type        =  map(string)
  default = {
    env     = "d"
    sys     = "ABC"
    env_num = "3004"
  }
}