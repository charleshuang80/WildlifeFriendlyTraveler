AnimalGroup.create!([
  {name: "Queen Conch", description: "The Queen Conch as become the symbol of the Caribbean, where it can be found on beaches, restaurant menus, and in souvenir shops. While not currently threatened with extinction, CITES does regulate trade to ensure it will not threaten the species in the wild.", aliases: nil, primary_photo_file_name: nil, primary_photo_content_type: nil, primary_photo_file_size: nil, primary_photo_updated_at: nil, section_id: 4},
  {name: "Common Iguana", description: "Largest species of the iguana family, and are native from Northern Mexico to Southern Brazil, including the Caribbean Islands. While they are not protected under the Endangered Species Act, they are regulated under CITES because their population is affected by trade.", aliases: nil, primary_photo_file_name: nil, primary_photo_content_type: nil, primary_photo_file_size: nil, primary_photo_updated_at: nil, section_id: 4},
  {name: "Sea Turtles", description: "Sea Turtles play key roles in 2 habitats: oceans and beaches. Although it is illegal to hunt them, many sea turtles are harvested for food. Some species are also hunted for their Tortoiseshell. There are 7 different types of sea turtles, and they can be found in all oceans except for polar regions.", aliases: nil, primary_photo_file_name: nil, primary_photo_content_type: nil, primary_photo_file_size: nil, primary_photo_updated_at: nil, section_id: 4},
  {name: "Parrots", description: "There are over 393 species of parrot, typically found in tropical and subtropical regions.These birds range from least concerned to critically endangered. Parrots are among the most intelligent birds and are often kept as pets. Trapping parrots for the pet trade, as well as habitat loss, has led to an overall decrease in the wild parrot population.", aliases: nil, primary_photo_file_name: nil, primary_photo_content_type: nil, primary_photo_file_size: nil, primary_photo_updated_at: nil, section_id: 4},
  {name: "Elephants", description: "Two species of Elephant are typically recognized: The African Elephant and the Asian Elephant. African elephants are considered vulnerable by the International Union for Conservation of Nature (IUCN), while Asian Elephants are classified as Endangered. One of the biggest threats to elephants is the ivory trade, but Elephants also face threats to their habitat and to conflicts with people.", aliases: nil, primary_photo_file_name: nil, primary_photo_content_type: nil, primary_photo_file_size: nil, primary_photo_updated_at: nil, section_id: 4}
])
Country.create!([
  {name: "Jamaica", code: 0}
])
CountryIssue.create!([
  {country_id: 1, issueable_id: 1, issueable_type: "AnimalGroup", top_concern: false},
  {country_id: 1, issueable_id: 2, issueable_type: "AnimalGroup", top_concern: false},
  {country_id: 1, issueable_id: 3, issueable_type: "AnimalGroup", top_concern: true},
  {country_id: 1, issueable_id: 4, issueable_type: "AnimalGroup", top_concern: true},
  {country_id: 1, issueable_id: 1, issueable_type: "ProductGroup", top_concern: false},
  {country_id: 1, issueable_id: 2, issueable_type: "ProductGroup", top_concern: false},
  {country_id: 1, issueable_id: 3, issueable_type: "ProductGroup", top_concern: false},
  {country_id: 1, issueable_id: 4, issueable_type: "ProductGroup", top_concern: false},
  {country_id: 1, issueable_id: 5, issueable_type: "ProductGroup", top_concern: false}
])
Product.create!([
  {name: "Conch Meat", description: "The meat of conchs is eaten raw in salads, or cooked in burgers, chowders, fritters, and gumbos. All parts of the meat are edible. It is very popular in Caribbean islands.", product_group_id: 1, animal_group_id: 1},
  {name: "Conch Shell Jewelry", description: "Varying shades of pink and white shells can be carved into different shapes and found in necklaces, bracelets, and earrings. Sometimes the shells will be painted different colors.", product_group_id: 3, animal_group_id: 1},
  {name: "Conch Shell Art", description: "Full Conch shells are often bought are taken from beaches to serve as decorative art pieces.", product_group_id: 2, animal_group_id: 1},
  {name: "Iguana Meat", description: "Iguana meat is eaten by some populations in the Caribbean, and are still used as a meat source. They are often referred to as the \"chicken of the trees.\"", product_group_id: 1, animal_group_id: 2},
  {name: "Sea Turtle Meat & Eggs", description: "Eating Sea Turtle meat is part of some culinary traditions and is considered a delicacy in some countries. There have been some attempts to farm sea turtles, however, there is currently only one sea turtle farm in operation, in the Cayman Islands.", product_group_id: 1, animal_group_id: 3},
  {name: "Tortoise Shell Jewelry", description: "Tortoise shell is produced from the shells of the larger species of tortoise and turtle, mainly the hawksbill sea turtle, which is endangered. Tortoise shell is often used in jewelry, including necklaces, combs, earrings, and bracelets.", product_group_id: 3, animal_group_id: 3}
])
ProductGroup.create!([
  {name: "Food", description: nil, primary_photo_file_name: nil, primary_photo_content_type: nil, primary_photo_file_size: nil, primary_photo_updated_at: nil, section_id: 1},
  {name: "Art & Decor", description: nil, primary_photo_file_name: nil, primary_photo_content_type: nil, primary_photo_file_size: nil, primary_photo_updated_at: nil, section_id: 2},
  {name: "Clothing & Accessories", description: nil, primary_photo_file_name: nil, primary_photo_content_type: nil, primary_photo_file_size: nil, primary_photo_updated_at: nil, section_id: 3},
  {name: "Animals", description: nil, primary_photo_file_name: nil, primary_photo_content_type: nil, primary_photo_file_size: nil, primary_photo_updated_at: nil, section_id: 4},
  {name: "Plants", description: nil, primary_photo_file_name: nil, primary_photo_content_type: nil, primary_photo_file_size: nil, primary_photo_updated_at: nil, section_id: 5}
])
Section.create!([
  {name: "Food", order: 1},
  {name: "Art & Decor", order: 2},
  {name: "Clothing & Accessories", order: 3},
  {name: "Animals", order: 4},
  {name: "Plants", order: 5}
])
