admin = User.create(
  email:                 'admin@example.com',
  password:              'password',
  password_confirmation: 'password',
  role:                  'admin'
)

puts "Created Admin: #{admin.email}"


50.times do |index|
  post = Post.create(
    title: "Post #{index.next}",
    body:  "This is the body for post #{index.next}"
  )
  puts post.title
end
