# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all()
Userproject.destroy_all()
Event.destroy_all()
User.destroy_all()

10.times do 
  User.create(
      username: Faker::Internet.username,
      password: '1234',
      name: Faker::Name.first_name,
      school: Faker::Educator.university,
      skillset: Faker::Educator.degree,
      img: Faker::LoremPixel.image
  )
  end

post_a = Post.create(user_id: 1, description: "I have a great idea to build an app", needed_skillset: "backend developer", snippet: "need help building")
post_b = Post.create(user_id: 2, description: "Want to record new music I have written", needed_skillset: "song writer", snippet: "Need help recording myself")
post_c = Post.create(user_id: 3, description: "Looking for a driven student to help build a website", needed_skillset: "developer", snippet: "blogger needing help")
post_d = Post.create(user_id: 4, description: "Just got a new camera and need models to help build my resume", needed_skillset: "model", snippet: "want free images?")

project_a = Userproject.create(user_id: 1, post_id: 2, interested: true, collaborating: true, comment: "excited")
project_b = Userproject.create(user_id: 3, post_id: 2, interested: false, collaborating: false, comment: "would love to her more")
project_c = Userproject.create(user_id: 2, post_id: 1, interested: false, collaborating: false, comment: "my email is ")
project_d = Userproject.create(user_id: 4 , post_id: 3, interested: false, collaborating: false, comment: "are you still looking for help")
project_d = Userproject.create(user_id: 1 , post_id: 4, interested: true, collaborating: false, comment: "?")

event1 = Event.create!({
    post_id: 1,
    title: 'Event 1',
    start: DateTime.new(2019,2,2,8),
    end: DateTime.new(2019,2,2,10)
  })

event2 = Event.create!({
    post_id: 2,
    title: 'Event 2',
    start: DateTime.new(2019,2,3,12),
    end: DateTime.new(2019,2,3,15)
  })

