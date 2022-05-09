resource "local_file" "localfile" {
  content  = "Hello ${random_pet.pet.id}"
  filename = var.filename
}

resource "random_pet" "pet" {
  length    = var.random_pet_length
  prefix    = var.random_pet_prefix
  separator = var.random_pet_seperator
}

output "pet_name" {
  value = random_pet.pet.id
}