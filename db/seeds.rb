10.times do
  User.create(name: Faker::Internet.user_name, email: Faker::Internet.email, password: "password")
end

20.times do
  Post.create(title: Faker::Hacker.say_something_smart, url: Faker::Internet.url, user_id: rand(1..10), votes: rand(1..100))
end

100.times do
  Comment.create(body: Faker::Hipster.paragraph, user_id: rand(1..10), post_id: rand(1..20), votes: rand(1..100))
end
