namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "SuperUser",
                        email: "superuser@example.org",
                        password: "superuser",
                        password_confirmation: "superuser",
                        admin: true)
    end
end