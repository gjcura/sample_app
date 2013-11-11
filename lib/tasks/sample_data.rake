namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Garrett",
                         email: "garrettcura@gmail.com",
                         password: "password",
                         password_confirmation: "password",
                         admin: true)
   end
end