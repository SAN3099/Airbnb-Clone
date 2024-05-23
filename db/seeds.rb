# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
properties = Property.create!({
    name:'Sample Property',
    description: 'sample text',
    headline: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
    address_1: 'abcd',
    address_2: 'efgh',
    city: 'ijkl',
    state: 'mnop',
    country:'qrst'

})