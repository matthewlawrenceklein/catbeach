# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Cat.destroy_all
Item.destroy_all
User.destroy_all

u = User.new(email: 'mtt.l.kln@gmail.com', password: 'P@ssw0rd', bux: 100)
u.save

i = Item.new(name: 'baseball hat', user: u)
i.save

c = Cat.new(name: 'Garby', user: u)
c.save