# Create Categories
Category.delete_all
Category.create! id: 1, name: "see"
Category.create! id: 2, name: "touch"
Category.create! id: 3, name: "hear"
Category.create! id: 4, name: "taste"
Category.create! id: 5, name: "smell"

# Create Status
Status.delete_all
Status.create! id: 1, name: "draft"
Status.create! id: 2, name: "pending"
Status.create! id: 3, name: "published"
