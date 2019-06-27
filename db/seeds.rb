# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employee.destroy_all
Proyect.destroy_all

10.times do |i|
    Employee.create(
        name: Faker::DcComics.hero
    )
end

4.times do |i|
    p = Proyect.create({
        name: Faker::Company.name,
        description: Faker::Company.industry
    })
    4.times do |j|
    p.employees << Employee.order('RANDOM()').first
    end
    p.save
end