# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(
  first_name: "Marcus",
  last_name: "Davis",
  email: "marcus@test.com",
)

Outfit.create(
  title: "Monday",
  user_id: 1,
)


Outfit.create(
  title: "Tuesday",
  user_id: 1,
)

ClothesCategory.create(
  title: "Shirt"
)

ClothesCategory.create(
  title: "Pants"
)

ClothesCategory.create(
  title: "Hat"
)

Clothe.create(
  name: "Grey Shirt",
  clothes_category_id: 1,
)

Clothe.create(
  name: "Blue Jeans",
  clothes_category_id: 2,
)

Clothe.create(
  name: "Baseball cap",
  clothes_category_id: 3,
)

