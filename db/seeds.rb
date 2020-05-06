# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

john = User.create(email: "johndoe@gmail.com")
jane = User.create(email: "janed@gmail.com")

tequilaSun = Drink.create(name: "Tequila Sunrise", ingredients: "2 oz Blanco tequila, 4 oz Fresh orange juice, 1/4 oz Grenadine, Orange slice, Cherry", steps: "Add the tequila and then the orange juice to a chilled highball glass. Float the grenadine on top. Garnish with an orange slice and a cherry.", image: "https://www.liquor.com/thmb/goYBEIJJnyZU5xYYhF3OYRnb5BU=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/__opt__aboutcom__coeus__resources__content_migration__liquor__2018__07__20113334__tequila-sunrise-720x720-article-ea5f456d4fa54cde9bf969429bfc01e8.jpg")
mule = Drink.create(name: "Moscow Mule", ingredients: "2 oz. vodka, 1/2 oz. lime juice, freshly squeezed, 6 oz. ginger beer", steps: "Squeeze lime juice into a Moscow Mule mug (or a Collins glass) and drop in the spent shell. Add 2 or 3 ice cubes, then pour in the vodka and fill with cold ginger beer (not ginger ale, although what the hell). Serve with a stirring rod.", image: "https://www.gimmesomeoven.com/wp-content/uploads/2018/05/How-To-Make-A-Moscow-Mule-Recipe-4-1.jpg")
Drink.create(name: "Tequila Sunrise", ingredients: "2 oz Blanco tequila, 4 oz Fresh orange juice, 1/4 oz Grenadine, Orange slice, Cherry", steps: "Add the tequila and then the orange juice to a chilled highball glass. Float the grenadine on top. Garnish with an orange slice and a cherry.", image: "https://www.liquor.com/thmb/goYBEIJJnyZU5xYYhF3OYRnb5BU=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/__opt__aboutcom__coeus__resources__content_migration__liquor__2018__07__20113334__tequila-sunrise-720x720-article-ea5f456d4fa54cde9bf969429bfc01e8.jpg")
Drink.create(name: "Moscow Mule", ingredients: "2 oz. vodka, 1/2 oz. lime juice, freshly squeezed, 6 oz. ginger beer", steps: "Squeeze lime juice into a Moscow Mule mug (or a Collins glass) and drop in the spent shell. Add 2 or 3 ice cubes, then pour in the vodka and fill with cold ginger beer (not ginger ale, although what the hell). Serve with a stirring rod.", image: "https://www.gimmesomeoven.com/wp-content/uploads/2018/05/How-To-Make-A-Moscow-Mule-Recipe-4-1.jpg")

Like.new(drink: tequilaSun, user: john)