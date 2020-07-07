# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Kitten.create_or_find_by(name: 'Snuffles', age: 2, cuteness: 9, softness: 10)
Kitten.create_or_find_by(name: 'Mary', age: 1, cuteness: 6, softness: 3)
Kitten.create_or_find_by(name: 'Ginger', age: 3, cuteness: 10, softness: 10)
Kitten.create_or_find_by(name: 'Punk', age: 1, cuteness: 5, softness: 8)
Kitten.create_or_find_by(name: 'Mr Pinkerton', age: 2, cuteness: 7, softness: 9)
