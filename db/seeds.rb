# Create a main sample user
User.create!(name: "Example User", email: "example-email@gmail.com", password: "12345678", password_confirmation: "12345678", admin: true)

# Generate a bunch of additional users
99.times do |n|
  name = Faker::Name.name
  email = "example-email#{n+1}@gmail.com"
  password = "12345678"
  User.create!(name: name, email: email, password: password, password_confirmation: password)
end
