puts "🌱 Seeding spices..."

c1 = Category.create(name: "Dairy")
c2 = Category.create(name: "Dessert")
c3 = Category.create(name: "Meat")
c4 = Category.create(name: "Misc")
c5 = Category.create(name: "Produce")
c6 = Category.create(name: "Snacks")

p1 = Product.create(name: "GRAPES", isInCart: false, category_id: 5, desc: "1 BAG")
p2 = Product.create(name: "CUPCAKES", isInCart: false, category_id: 2, desc: "2 DOZEN")
p3 = Product.create(name: "MILK", isInCart: false, category_id: 1, desc: "1")
p4 = Product.create(name: "SALAD", isInCart: false, category_id: 5, desc: "4 CONTAINERS")
p5 = Product.create(name: "WATERMELON", isInCart: false, category_id: 5, desc: "BOGO")
p6 = Product.create(name: "FLOWERS", isInCart: false, category_id: 4, desc: "1 BOUQUET")
p7 = Product.create(name: "CHICKEN", isInCart: false, category_id: 3, desc: "1.5 LBS")
p8 = Product.create(name: "WATER", isInCart: false, category_id: 4, desc: "3 CASES")

puts "✅ Done seeding!"
