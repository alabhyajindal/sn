# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

30.times do |i|
  username = Faker::Internet.username
  password = '123'

  user = User.create!(username: username, password: password)

  url = Faker::Internet.url
  title = Faker::Hipster.sentence
  paragraph = Faker::Hipster.paragraph

  if rand > 0.5
    user.posts.create!(title: title, text: paragraph, url: nil)
  else
    user.posts.create!(title: title, url: url, text: nil)
  end
end