# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

beef_cat = Ingcat.create!(name:'Beef')
chicken_cat = Ingcat.create!(name:'Chicken')
fish_cat = Ingcat.create!(name:'Fish')
pork_cat = Ingcat.create!(name:'Pork')
veggieburger_cat = Ingcat.create!(name:'Veggie Burger')
bean_cat = Ingcat.create!(name:'Beans')
cheese_cat = Ingcat.create!(name:'Cheese')
vegetable_cat = Ingcat.create!(name:'Vegetable')
topping_cat = Ingcat.create!(name:'Topping')

puts "#{Ingcat.count} ingredient categories created!"

brisket = Ingredient.create!(name:'Brisket', ingcat: beef_cat)
ground_beef = Ingredient.create!(name:'Ground Beef', ingcat: beef_cat)
roast_chicken = Ingredient.create!(name:'Roasted Chicken', ingcat: chicken_cat)
pulled_chicken = Ingredient.create!(name:'Pulled Chicken', ingcat: chicken_cat)
ground_chicken = Ingredient.create!(name:'Ground Chicken', ingcat: chicken_cat)
cod = Ingredient.create!(name:'Cod', ingcat: fish_cat)
salmon = Ingredient.create!(name:'Salmon', ingcat: fish_cat)
tuna = Ingredient.create!(name:'Tuna', ingcat: fish_cat)
roast_pork = Ingredient.create!(name:'Roasted Pork', ingcat: pork_cat)
pulled_pork = Ingredient.create!(name:'Pulled Pork', ingcat: pork_cat)
black_bean_burger = Ingredient.create!(name:'Black Bean Burger', ingcat: veggieburger_cat)
impossible_burger = Ingredient.create!(name:'Impossible Burger', ingcat: veggieburger_cat)
black_bean = Ingredient.create!(name:'Black Beans', ingcat: bean_cat)
pinto_bean = Ingredient.create!(name:'Pinto Beans', ingcat: bean_cat)
refried_bean = Ingredient.create!(name:'Refried Beans', ingcat: bean_cat)
cheddar = Ingredient.create!(name:'Cheddar', ingcat: cheese_cat)
queso_blanco = Ingredient.create!(name:'Queso Blanco', ingcat: cheese_cat)
monterey_jack = Ingredient.create!(name:'Monterey Jack', ingcat: cheese_cat)
avocado = Ingredient.create!(name:'Avocado', ingcat: vegetable_cat)
lettuce = Ingredient.create!(name:'Lettuce', ingcat: vegetable_cat)
caramelized_onion = Ingredient.create!(name:'Caramelized Onion', ingcat: vegetable_cat)
tomato = Ingredient.create!(name:'Tomato', ingcat: vegetable_cat)
jalepeno = Ingredient.create!(name:'Jalepeno', ingcat: vegetable_cat)
sweet_pepper = Ingredient.create!(name:'Sweet Pepper', ingcat: vegetable_cat)
sour_cream = Ingredient.create!(name:'Sour Cream', ingcat: topping_cat)
guacamole = Ingredient.create!(name:'Guacamole', ingcat: topping_cat)
salsa = Ingredient.create!(name:'Salsa', ingcat: topping_cat)

puts "#{Ingredient.count} ingredients created!"

beef_taco_cat = Tacocat.create!(name:'Beef')
chicken_taco_cat = Tacocat.create!(name:'Chicken')
fish_taco_cat = Tacocat.create!(name:'Fish')
pork_taco_cat = Tacocat.create!(name:'Pork')
veggieburger_taco_cat = Tacocat.create!(name:'Veggie Burger')

puts "#{Tacocat.count} ingredient categories created!"

carne = Taco.create!(name: 'Carne', tacocat: beef_taco_cat)
pollo = Taco.create!(name: 'Pollo', tacocat: chicken_taco_cat)
fish = Taco.create!(name: 'Fish', tacocat: fish_taco_cat)
pork = Taco.create!(name: 'Pork', tacocat: pork_taco_cat)
spicy_veggie = Taco.create!(name: 'Spicy Veggie', tacocat: veggieburger_taco_cat)

puts "#{Taco.count} tacos created!"

Tacosingredient.create!([
  {taco: carne, ingredient: brisket},
  {taco: carne, ingredient: pinto_bean},
  {taco: carne, ingredient: queso_blanco},
  {taco: carne, ingredient: caramelized_onion},
  {taco: carne, ingredient: salsa},
  {taco: pollo, ingredient: roast_chicken},
  {taco: pollo, ingredient: refried_bean},
  {taco: pollo, ingredient: cheddar},
  {taco: pollo, ingredient: avocado},
  {taco: pollo, ingredient: sour_cream},
  {taco: fish, ingredient: cod},
  {taco: fish, ingredient: pinto_bean},
  {taco: fish, ingredient: monterey_jack},
  {taco: fish, ingredient: lettuce},
  {taco: fish, ingredient: guacamole},
  {taco: spicy_veggie, ingredient: black_bean_burger},
  {taco: spicy_veggie, ingredient: refried_bean},
  {taco: spicy_veggie, ingredient: cheddar},
  {taco: spicy_veggie, ingredient: jalepeno},
  {taco: spicy_veggie, ingredient: guacamole},
  ])

puts "#{Tacosingredient.count} tacos ingredients created!"





