require 'faker'

#Create User
User.delete_all
User.create(
	name: "Test",
	email: "test@test.com",
	password: 'helloedward'
)
User.create(
	name: "Admin",
	email: "admin@admin.com",
	password: 'helloedward'
)
users = User.all

# Create Categories
Category.delete_all
Category.create!(id: 1, name: "see")
Category.create!(id: 2, name: "touch")
Category.create!(id: 3, name: "hear")
Category.create!(id: 4, name: "taste")
Category.create!(id: 5, name: "smell")
categories = Category.all

# Create Status
Status.delete_all
Status.create!(id: 1, name: "draft")
Status.create!(id: 2, name: "pending")
Status.create!(id: 3, name: "published")
statuses = Status.all

# Create Posts
Post.delete_all
20.times do
   Post.create(
    title:      			Faker::Team.name,
    body:            	Faker::Lorem.paragraphs(3, true).join,
		user:          		users.sample,
		category:         categories.sample,
		status:           statuses.sample
  )
end
posts = Post.all
