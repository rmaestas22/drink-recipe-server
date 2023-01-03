puts "Deleting Drink/User data..."
Drink.destroy_all
User.destroy_all

puts "Creating users..."
Gerald = User.create(name: "Gerald", email: "Gerald@email.com")
Alison = User.create(name: "Alison", email: "Alison@email.com")
Jefferson = user.create(name: "Jefferson", email: "Jefferson@email.com")

puts "creating drinks..."
Old Fashioned = Drink.create(drink_name:"Old Fashioned", ingredients:"Simple Sryup, Water, Bitters, Ice, Bourbon,Garnish", instructions:"", rating:9, made:true, user_id:)

Whiskey Sour = Drink.create(drink_name:"Whiskey Sour", ingredients:["5 ounces whiskey","2 ounces fresh lemon juice","1 ounce simple syrup","1 cup ice cubes","3 maraschino cherries for garnish"] instructions:" Combine whiskey, lemon juice, and simple syrup in a shaker. Fill with ice. Cover and shake until the shaker is frosty, about 30 seconds. Strain into 3 martini glasses and garnish each glass with a maraschino cherry.", rating:6, made:false, user_id:)

Irish Coffee = Drink.create(drink_name:"Irish Coffee", ingredients:["1.5 ounce irish cream liqueur","1.5 ounce irish whiskey","1 cup hot brewed coffee","1 tablespoon whipped cream","1 dash ground nutmeg"], instructions:"In a coffee mug, combine Irish cream and Irish whiskey. Fill mug with coffee. Top with a dab of whipped cream and a dash of nutmeg.", rating:3, made:false, user_id:)

Martini = Drink.create(drink_name:"Martini", ingredients:["2.5 ounces gin",".5 ounce dry vermouth","1 pitted green olive","1 cup ice"], instructions:"Scoop ice into a shaker. Pour in gin and vermouth. Cover shaker, and gently shake to mix vermouth and gin. Pour drink, without ice, into a cocktail glass. Gently drop olive or lemon twist into the glass. Serve.", rating:7, made:true, user_id:)

Manhattan = Drink.create(drink_name:"Manhattan", ingredients:"["2 ounces rye whiskey",".5 ounce sweet vermouth","1 dash Angostura bitters","1 cup ice cubes","1 maraschino cherry"]", instructions:"Combine whiskey, vermouth, and bitters in a cocktail mixing glass. Add ice and stir until chilled. Strain into a chilled cocktail glass and garnish with a maraschino cherry.", rating:1, made:false, user_id:)



puts "✅ Done seeding!"
