puts "Deleting Drink/User data..."
Drink.destroy_all
User.destroy_all

puts "Creating users..."
gerald = User.create(name: "Gerald", email: "Gerald@email.com")
alison = User.create(name: "Alison", email: "Alison@email.com")
jefferson = User.create(name: "Jefferson", email: "Jefferson@email.com")

puts "creating drinks..."
old_fashioned = Drink.create(drink_name: "Old Fashioned", ingredients: "0.25 oz simple sryup\nbitters\nice\n2 oz bourbon\nmaraschino cherry", instructions: "Pour simple syrup and bitters into a whiskey glass; stir to combine. Add ice cubes and pour in bourbon. Garnish with maraschino cherry.", rating: 9, made: true, image_url:"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTEQb17mjTQNjX28x0lyngdGj2Zp9UFziqqpn2WH0WXgpxHIyZ0"  ,user_id: gerald.id)

whiskey_sour = Drink.create(drink_name: "Whiskey Sour", ingredients:"2 oz whiskey\n0.75 oz fresh lemon juice\n1 oz simple syrup\n1 egg white\nAngostura aromatic bitters", instructions:"Combine whiskey, lemon juice, simple syrup, and a dash of bitters in a shaker. Fill with ice. Cover and shake until the shaker is frosty, about 30 seconds. Strain into glass and add 5 drops of bitters.", rating: 10, made:false, image_url:"https://blog-distiller.imgix.net/wp-content/uploads/2018/08/24143617/whiskeysourADOBE-1200x600.jpg?w=1200&h=600 " ,user_id: gerald.id)

irish_coffee = Drink.create(drink_name: "Irish Coffee", ingredients: "1.5 oz Irish cream liqueur\n1.5 oz Irish whiskey\n1 cup hot brewed coffee\n1 tablespoon whipped cream\n1 dash ground nutmeg", instructions:"In a coffee mug, combine Irish cream and Irish whiskey. Fill mug with coffee. Top with a dab of whipped cream and a dash of nutmeg.", rating: 3, made: false, image_url:"https://www.foodandwine.com/thmb/TNVoBB4XaCn6zBdeCCrwmRRZE-M=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Why-Irish-Coffee-Should-Replace-The-Espresso-Martini-FT-BLOG0922-2000-0c1acd57e2f54aaeb41aecd1e0885dd3.jpg" ,user_id: alison.id)

martini = Drink.create(drink_name: "Martini", ingredients:"2.5 oz gin\n0.5 oz dry vermouth\n1 pitted green olive\n1 cup ice", instructions:"Scoop ice into a shaker. Pour in gin and vermouth. Cover shaker, and gently shake to mix vermouth and gin. Pour drink, without ice, into a cocktail glass. Gently drop olive or lemon twist into the glass. Serve.", rating: 7, made: true, image_url:"https://cdn.tasteatlas.com/images/ingredients/3cb14e6a09594beaad83714854253d3e.jpeg" ,user_id: jefferson.id)

manhattan = Drink.create(drink_name: "Manhattan", ingredients:"2 oz rye whiskey\n0.5 oz sweet vermouth\n1 dash Angostura aromatic bitters\n1 cup ice cubes\nmaraschino cherry", instructions:"Combine whiskey, vermouth, and bitters in a cocktail mixing glass. Add ice and stir until chilled. Strain into a chilled cocktail glass and garnish with a maraschino cherry.", rating: 1, made: false, image_url:"https://miro.medium.com/max/1050/1*hcRxOM5-fz0nj8qSMQEW7w.jpeg " ,user_id: alison.id)



puts "✅ Done seeding!"
