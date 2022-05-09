variable "filename" {
    type = string
    description = "File where the pet name goes"
    default = "./pet.txt"
}

variable "random_pet_length" {
    type = number
    description = "Randomly generated pet name length"
    default = 1
}

variable "random_pet_prefix" {
    type = string
    description = "Random pet prefix"
    default = "Mr"
}

variable "random_pet_seperator" {
    type = string
    description = "Separator in the pet name"
    default = ". "
  
}