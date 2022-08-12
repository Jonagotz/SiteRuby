# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


admin = [
    {
        email: 'admin@user.com',
        password: 123456,
        password_confirmation: 123456 }
    ]

admin.each do |admin|
    Admin.create!(admin)   
end

user = [
    {
        email: 'user@user.com',
        password: 123456,
        password_confirmation: 123456 }
    ]

user.each do |user|
    User.create!(user)   
end