Flat.destroy_all
User.destroy_all
Review.destroy_all

# Landlords
laura = User.create!(first_name:'Laura', last_name:'Meyer', email:'laura@gmail.com',
  landlord: true, password:'111111')
marc = User.create!(first_name:'Marc', last_name:'Lachartre', email:'marc@gmail.com',
  landlord: true, password:'111111')
alois = User.create!(first_name:'Alois', last_name:'Beard', email:'alois@gmail.com',
  landlord: true, password:'111111')

# Tenants
killian = User.create!(first_name:'Killian', last_name:'Guacide', email:'killian@gmail.com', password:'111111')
filippo = User.create!(first_name:'Filippo', last_name:'Tognacci', email:'filippo@gmail.com', password:'111111')
amir = User.create!(first_name:'Amir', last_name:'Yosef', email:'amir@gmail.com', password:'111111')


# Flats
flat1 = Flat.create!(address:'Korte Bergstraat 2B, Amersfoort', bedrooms:1, size:42, build_year:1985, deposit_amount:1000, description:
  'Charming 1 bedroom apartment with a large bedroom and plenty of storage space.
  The apartment is in a quiet street close to many amenities and a 10min walk to
  Amersfoort train station.', rental_price:900, landlord:laura, tenant:killian, bathrooms:1,
  remote_photo1_url:'https://res.cloudinary.com/dzlhbbkad/image/upload/v1551795007/apartment1A.jpg',
  remote_photo2_url:'https://res.cloudinary.com/dzlhbbkad/image/upload/v1551795007/apartment1B.jpg',
  remote_photo3_url:'https://res.cloudinary.com/dzlhbbkad/image/upload/v1551795007/apartment1C.jpg',
  remote_photo4_url:'https://res.cloudinary.com/dzlhbbkad/image/upload/v1551795007/apartment1D.jpg',
  remote_photo5_url:'https://res.cloudinary.com/dzlhbbkad/image/upload/v1551795007/apartment1E.jpg')

flat2 = Flat.create!(address:'Korte Prinsengracht 24, Amsterdam',
  bedrooms:2, size:85, build_year:1964, deposit_amount:1800, description:
  'Modern 2 bedroom apartment in central Amsterdam. The apartment boasts
  2 double sized bedrooms, a large bathroom with bath shower and a separate
  toilet room. Modern kitchen with plenty of natural light. The apartment is a 10
  minute walk to Amsterdam Centraal station and has plenty of shops and restuarants
  close by.', rental_price:2100, landlord:marc, tenant:filippo, bathrooms:1)

flat3 = Flat.create!(address:'Baarsjesweg 192B, Amsterdam',
  bedrooms:2, size:82, build_year:1958, deposit_amount:2000, description:
  'Recently renovated 2 bedroom apartment in the heart of Oud West. The apartment
  was renovated in 2017 and boasts a modern and sleek finish. Plenty of
  storage and 2 large bedrooms. The bathroom has a large rain shower and separate
  his and her basins. 5min walk to the metro.', rental_price:2400, landlord:alois, tenant:amir, bathrooms:2)


review1 = Review.create!(rating:4, comment:'Amazing apartment but on a noisy street.', flat:flat1, tenant:killian)

review2 = Review.create!(rating:2, comment:'Huge damp problem in the flat.', flat:flat2, tenant:filippo)
