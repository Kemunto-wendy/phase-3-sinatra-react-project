puts "🌱 Seeding data..."

puts "Creating companies..."
ufanisi = Company.create(company_name: "Ufanisi SACCO", address: "23-00100", location:"Ufanisi Building, Kawangware", phone: "0712 345 678", email:"info@ufanisi.com")

cooperative = Company.create(company_name: "Cooperative University", address: "456-00100", location:"Karen", phone: "0701 235 876", email:"info@cooperative.com")

cannonical = Company.create(company_name: "Cannonical", address: "78-00100", location:"Unga House Westlands", phone: "0723 890 456", email:"tech@cannonical.com")

mercycorps = Company.create(company_name: "Mercy Corps Kenya", address: "678-00100", location:"Upperhill", phone: "0789 837 837", email:"info@mercycorps.org")

knhcr = Company.create(company_name: "KNHCR", address: "89-00100", location:"Gigiri", phone: "0721 121 121", email:"info@knhcr.org")

puts "Creating tags......"
epson = Tag.create(tag_name: "Epson")
hp = Tag.create(tag_name: "HP")
dell = Tag.create(tag_name: "Dell")
kyocera = Tag.create(tag_name: "Kyocera")
panasonic = Tag.create(tag_name: "Panasonic")

puts "Creating Blogs.."

laserjet = Blog.create(title:"Laserjet MFP M283fdw", category: "Good", content:"new work", author_id: author.id )
laserjet = Blog.create(title:"Laserjet MFP M283fdw", category: "Good", content:"new work", author_id: author.id )
laserjet = Blog.create(title:"Laserjet MFP M283fdw", category: "Good", content:"new work", author_id: author.id )
laserjet = Blog.create(title:"Laserjet MFP M283fdw", category: "Good", content:"new work", author_id: author.id )



puts "Creating authors......"
dennis = Author.create(name: "Dennis Kimathi", location: "Wanye Close", passion:"singer", email: "dk38@gmail.com")
dennis = Author.create(name: "Dennis Kimathi", location: "Wanye Close", passion:"singer", email: "dk38@gmail.com")
dennis = Author.create(name: "Dennis Kimathi", location: "Wanye Close", passion:"singer", email: "dk38@gmail.com")
dennis = Author.create(name: "Dennis Kimathi", location: "Wanye Close", passion:"singer", email: "dk38@gmail.com")

puts "Creating displays...."
dell3500 = Display.create(author: "Dell Vostro 3500 ", blog:"we are glad to be here")
dell3500 = Display.create(author: "Dell Vostro 3500 ", blog:"we are glad to be here")
dell3500 = Display.create(author: "Dell Vostro 3500 ", blog:"we are glad to be here")
dell3500 = Display.create(author: "Dell Vostro 3500 ", blog:"we are glad to be here")




puts "🌱 Done seeding!"
