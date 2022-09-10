puts "🌱 Seeding data..."

puts "Creating companies..."
equity = Company.create(company_name: "Equity Bank", address: "001009", location:"Nairobi CBD", phone: "0756446677", email:"info@equity.com")

family = Company.create(company_name: "Family Bank", address: "478220", location:"Kilimani", phone: "0798776629", email:"info@family.com")

women = Company.create(company_name: "Women Tech", address: "798820", location:"Ngong Road", phone: "077689992", email:"tech@womeniintech.com")


puts "Creating tags......"
team = Tag.create(tag_name: "Team")
crew = Tag.create(tag_name: "Crew")
wish = Tag.create(tag_name: "Wish")

puts "Creating Blogs.."

developer = Blog.create(title:"How to become a developer", category: "Good", content:"Best programming languages", author_id: author.id )
developer = Blog.create(title:"How to become a developer", category: "Good", content:"Best programming languages", author_id: author.id )
developer = Blog.create(title:"How to become a developer", category: "Good", content:"Best programming languages", author_id: author.id )


puts "Creating authors......"
wendy= Author.create(name: "Joy Kemunto", location: "Waiyaki Way", passion:"singer", email: "joykemunto333@gmail.com")
wendy= Author.create(name: "Joy Kemunto", location: "Waiyaki Way", passion:"singer", email: "joykemunto333@gmail.com")
wendy= Author.create(name: "Joy Kemunto", location: "Waiyaki Way", passion:"singer", email: "joykemunto333@gmail.com")
wendy= Author.create(name: "Joy Kemunto", location: "Waiyaki Way", passion:"singer", email: "joykemunto333@gmail.com")

puts "Creating displays...."
wendy = Display.create(author: "Joy Kemunto ", blog:"Come lets learn new stuff")
wendy = Display.create(author: "Joy Kemunto ", blog:"Come lets learn new stuff")
wendy = Display.create(author: "Joy Kemunto ", blog:"Come lets learn new stuff")
wendy = Display.create(author: "Joy Kemunto ", blog:"Come lets learn new stuff")




puts "🌱 Done seeding!"
