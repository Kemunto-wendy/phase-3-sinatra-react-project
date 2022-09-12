puts "🌱 Seeding data..."

puts "Creating authors......"
truoy= Author.create(name: "Joy Kemunto", location: "Waiyaki Way", passion:"singer", email: "joykemunto333@gmail.com")
dennis= Author.create(name: "Joy Kemunto", location: "Waiyaki Way", passion:"singer", email: "joykemunto333@gmail.com")
kevin= Author.create(name: "Joy Kemunto", location: "Waiyaki Way", passion:"singer", email: "joykemunto333@gmail.com")
puts "Creating Blogs.."
developer = Blog.create(title:"How to become a developer", category: "Good", content:"Best programming languages", author_id: kevin.id )
engineer = Blog.create(title:"How to become a developer", category: "Good", content:"Best programming languages", author_id: truoy.id )
doctor = Blog.create(title:"How to become a developer", category: "Good", content:"Best programming languages", author_id: dennis.id )





puts "🌱 Done seeding!"
