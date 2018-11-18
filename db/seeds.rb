# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



########## USERS ###########

User.destroy_all
User.create(
  {
    email: 'DemoUser',
    first_name: 'Demo',
    last_name: 'User',
    password: 'starwars',
    location: 'SF',
  }
);

User.create(
  {
    email: 'Feebo',
    first_name: 'feebo',
    last_name: 'feebo',
    password: 'starwars',
    location: 'Millbrae',
  }
);

User.create(
  {
    email: 'Meggy',
    first_name: 'meggy',
    last_name: 'meggy',
    password: 'starwars',
    location: 'NY',
  }
);


######## RESTAURANTS #########

Restaurant.destroy_all
rest1 = Restaurant.create(
  {
    name: 'Feebos',
    description: 'All types of Cuisine Done With Precision"-New York Times A Blend Of Local, Seasonal 
    and Organic Ingredients Prepared Using Classic and Modern Technique. The best food on the planet!',
    location: 'Millbrae',
    cuisines: 'Everything',
    hours_of_operation: '10:00 - 24:00',
    tables: 52
  }
)
rest1.photo.attach(io: File.open('app/assets/images/feebo-rest.jpg'), filename: 'feebo.jpg')

rest2 = Restaurant.create(
  {
    name: 'Ceces',
    description: 'Ceces, bringing a taste of Italy to San Francisco. With a focus on the regions of Rome 
    and Tuscany we offer fresh, house made pastas and pizzas, both available gluten free, house cured meats, 
    seafood crudo and many other delicacies. We feature hand crafted cocktails and soft drinks in our full bar. 
    We offer patio dining with views of the estuary.',
    location: 'San Francisco',
    cuisines: 'Italian',
    hours_of_operation: '10:00 - 24:00',
    tables: 36
  }
)
rest2.photo.attach(io: File.open('app/assets/images/italian.jpg'), filename: 'italian.jpg')

rest3 = Restaurant.create(
  {
    name: 'The Crooked Spoon',
    description: 'Rising Star Chef Nominee by the Feebo Phoebe Foundation, Founder Chef Anthony, 
    at The Crooked Spoon has received many accolades from five consecutive years on the Chronicle\'s 
    Top 100 American Restaurant List to the Top 40 in Zagat. This is a restaurant not to be missed in New York.',
    location: 'New York',
    cuisines: 'American',
    hours_of_operation: '10:00 - 24:00',
    tables: 120
  }
)
rest3.photo.attach(io: File.open('app/assets/images/spoon.jpg'), filename: 'spoon.jpg')

rest4 = Restaurant.create(
  {
    name: 'Gigis',
    description: 'Gigi\'s diverse menu celebrates the unique and layered gastronomy of Mexico. 
    Using traditional ingredients and techniques, Chef Gigi presents both new and familiar Mexican 
    flavors with an inspired, modern perspective. Gigi\'s offers a full bar with an extensive 
    tequila and mezcal collection, as well as innovative cocktails. Come enjoy the spirit of Mexico 
    in an artistic, comfortable environment in Los Angeles!',
    location: 'Los Angeles',
    cuisines: 'Mexican',
    hours_of_operation: '10:00 - 24:00',
    tables: 20
  }
)
rest4.photo.attach(io: File.open('app/assets/images/gigis.jpg'), filename: 'gigis.jpg')

rest5 = Restaurant.create(
  {
    name: 'Fiery Restaurant',
    description: 'A new kind of Argentinian steakhouse that combines Latin American flavors with 
    Californian sensibilities.',
    location: 'San Francisco',
    cuisines: 'Argentenian',
    hours_of_operation: '10:00 - 24:00',
    tables: 50
  }
)
rest5.photo.attach(io: File.open('app/assets/images/argen.jpg'), filename: 'argen.jpg')


rest6 = Restaurant.create(
  {
    name: 'SEASIDE',
    description: 'At SEASIDE, Chef AndTony serves coastal cuisine with French influence. The menu changes daily depending on what\'s fresh. Expect exciting combinations and show-stopping execution.',
    location: 'San Francisco',
    cuisines: 'Seafood',
    hours_of_operation: '10:00 - 24:00',
    tables: 24
  }
)
rest6.photo.attach(io: File.open('app/assets/images/watery-rest.jpg'), filename: 'watery-rest.jpg')



Review.destroy_all
Reservation.destroy_all