# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
User.destroy_all

#account for dev use
User.create({
  email: "test@test.com",
  password: "password",
  password_confirmation: "password"
})

#seed with 10 fake users
10.times do
  user = User.create({
    email: FFaker::Internet.email,
    password: "password",
    password_confirmation: "password"
  })
  #each with 3 posts
  3.times do
    post = Post.create({
      title: FFaker::BaconIpsum.words.join,
      body: FFaker::BaconIpsum.paragraph
    })
    #associate the user with the created post
    user.posts << post
  end
end