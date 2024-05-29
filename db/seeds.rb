# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



user = User.create!({
    email: 'test1@gmail.com',
    password: '123456'
})


6.times do |i|
    property = Property.create!({
        name: Faker::Lorem.unique.sentence(word_count: 3),
        description:Faker::Lorem.unique.paragraph(sentence_count: 10),
        headline: Faker::Lorem.unique.sentence(word_count: 6),
        address_1: Faker::Address.street_address,
        address_2: Faker::Address.street_name,
        city: Faker::Address.city,
        state: Faker::Address.state,
        country:Faker::Address.country,
        price: Money.from_amount((50..100).to_a.sample, 'USD'),    
    })
    property.images.attach(io:File.open("db/images/property_#{i + 1}.png"),filename: property.name)
    property.images.attach(io:File.open("db/images/property_#{i + 7}.png"),filename: property.name)

    ((5..10).to_a.sample).times do
        Review.create!({
            content: Faker::Lorem.paragraph(sentence_count: 10),
            communication_rating: (1..5).to_a.sample,
            cleanlines_rating: (1..5).to_a.sample,
            accuracy_rating: (1..5).to_a.sample,
            checkin_rating: (1..5).to_a.sample,
            location_rating: (1..5).to_a.sample,
            value_rating: (1..5).to_a.sample,
            property: property,
            user: user 
        })
    end
end

