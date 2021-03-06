namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Garrett",
                         email: "garrettcura@gmail.com",
                         password: "password",
                         password_confirmation: "password",
                         admin: true)
                         
   admin = User.create!(name: "Spencer",
                         email: "spencer@gmail.com",
                         password: "password",
                         password_confirmation: "password")
                         
   users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
      end                      
   end
end