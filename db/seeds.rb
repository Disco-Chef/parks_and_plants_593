Garden.destroy_all
Tag.destroy_all

gardens = [ {name: 'English Garden', banner_url: 'https://www.muenchen.de/media/sw/mho/monopteros-panorama-hp.jpg'}, {name: 'Palmengarten', banner_url: 'https://upload.wikimedia.org/wikipedia/commons/a/aa/Eingang_Palmengarten_Frankfurt.JPG' }]

plant_images = [{name:'Rose', image_url:'https://images.unsplash.com/photo-1562690868-60bbe7293e94?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1920&q=80'}, {name:'Welwitschia mirabilis', image_url:'https://i.pinimg.com/originals/2a/da/49/2ada494e329c66881f4ed7453c9f81ae.jpg'}, {name:'Monstera', image_url:'https://cdn.shopify.com/s/files/1/0207/8508/products/monstera_2048x.jpg?v=1568651988'}]


gardens.each do |garden|
  garden = Garden.create(garden)
  puts "#{garden[:name]} was created"
  rand(1..3).times do
    plant = Plant.new(plant_images.sample)
    plant.garden = garden
    plant.save
  end
end

names_for_tags = %w[Fruit\ tree Bush Cactus Weed Conifers Ferns Flower]

names_for_tags.each do |name|
  Tag.create(name: name)
end
