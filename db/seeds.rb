require 'faker'

songs = []
10.times do
  songs << Song.create(
    title: Faker::Lorem.words(rand(1..3)).join(" "), 
    link: Faker::Lorem.words(rand(1..3)).join(" "),
    user_id: Faker::Number.digit
  )
end

users = []
5.times do
  users << User.create(
    email: Faker::Internet.email
  )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Song.count} posts created"
