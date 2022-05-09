variable "files" {
    type = list(string)
    default = [ "dog.txt","cat.txt" ]
}

variable "secretmessage" {
    default = "SomethingSecretYo"
}