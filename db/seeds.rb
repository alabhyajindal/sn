30.times do |i|
  username = Faker::Internet.username
  password = '123'

  user = User.create!(username: username, password: password)

  url = Faker::Internet.url
  title = Faker::Hipster.sentence
  paragraph = Faker::Hipster.paragraph

  post = user.posts.new()
  if rand > 0.5
    post.title = title
    post.text = paragraph
  else
    post.title = title
    post.url = url
  end
  post.save!
  post.votes.create(user: user)
end