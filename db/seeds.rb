# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
users = User.create([
                      { first_name: "Jeff", last_name: "Ladiray", email: "jl@demo.com" },
                      { first_name: "Matthieu", last_name: "Videaud", email: "mv@demo.com" },
                      { first_name: "Nicolas", last_name: "Alexandre", email: "nl@demo.com" },
                      { first_name: "Julien", last_name: "Barreau", email: "jb@demo.com" },
                      { first_name: "Steve", last_name: "Bunlon", email: "sb@demo.com" },
                      { first_name: "Arnaud", last_name: "Moncel", email: "am@demo.coom" },
                    ])

products = Product.create([
                            { label: "PS5", price: 649 },
                            { label: "Xbox Series X", price: 499 },
                            { label: "Nintendo Switch", price: 299 },
                            { label: "Oculus Quest 2", price: 299 },
                            { label: "Apple Watch", price: 399 },
                            { label: "Samsung Galaxy S21", price: 799 },
                            { label: "Google Pixel 5", price: 699 },
                            { label: "OnePlus 9 Pro", price: 969 },
                            { label: "MacBook Pro", price: 1299 },
                            { label: "Dell XPS 13", price: 999 },
                            { label: "HP Spectre x360", price: 1199 },
                            { label: "Lenovo ThinkPad X1 Carbon", price: 1499 },
                            { label: "Asus ROG Zephyrus G14", price: 1199 },
                            { label: "Razer Blade 15", price: 1599 },
                            { label: "Alienware Area-51m", price: 1999 },
                            { label: "MSI GS65 Stealth", price: 1499 },
                            { label: "Acer Predator Helios 300", price: 1199 },
                            { label: "Gigabyte Aero 15", price: 1999 },
                            { label: "Microsoft Surface Laptop 3", price: 999 },
                            { label: "Huawei MateBook X Pro", price: 1199 },
                          ])

orders = Order.create([
                        { user: users[0], reference: "A123" },
                        { user: users[1], reference: "B456" },
                        { user: users[2], reference: "C789" },
                        { user: users[3], reference: "D012" },
                        { user: users[4], reference: "E345" },
                        { user: users[5], reference: "F678" },
                        { user: users[0], reference: "G901" },
                        { user: users[1], reference: "H234" },
                        { user: users[2], reference: "I567" },
                        { user: users[3], reference: "J890" },
                        { user: users[4], reference: "K123" },
                        { user: users[5], reference: "L456" },
                        { user: users[0], reference: "M789" },
                        { user: users[1], reference: "N012" },
                        { user: users[2], reference: "O345" },
                        { user: users[3], reference: "P678" },
                        { user: users[4], reference: "Q901" },
                        { user: users[5], reference: "R234" },
                      ])


orders.each do |order|
  order.products << products.sample(rand(1..5))
end