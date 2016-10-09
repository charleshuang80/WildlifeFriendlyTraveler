AnimalGroup.create!([
  {name: "Queen Conch",
    description: "The Queen Conch as become the symbol of the Caribbean, where it can be found on beaches, restaurant menus, and in souvenir shops. While not currently threatened with extinction, CITES does regulate trade to ensure it will not threaten the species in the wild.",
    aliases: nil,
    primary_photo_file_name: nil,
    primary_photo_content_type: nil,
    primary_photo_file_size: nil,
    primary_photo_updated_at: nil,
    section_id: 4,
    status: "The Queen Conch has not yet be assessed for the IUCN Red List"
},
  {name: "Common Iguana",
    description: "Largest species of the iguana family, and are native from Northern Mexico to Southern Brazil, including the Caribbean Islands. While they are not protected under the Endangered Species Act, they are regulated under CITES because their population is affected by trade.",
    aliases: nil,
    primary_photo_file_name: nil,
    primary_photo_content_type: nil,
    primary_photo_file_size: nil,
    primary_photo_updated_at: nil,
    section_id: 4,
    status: "The common iguana has not yet be assessed for the IUCN Red List"
},
  {name: "Sea Turtles",
    description: "Sea Turtles play key roles in 2 habitats: oceans and beaches. Although it is illegal to hunt them, many sea turtles are harvested for food. Some species are also hunted for their Tortoiseshell. There are 7 different types of sea turtles, and they can be found in all oceans except for polar regions.",
    aliases: nil,
    primary_photo_file_name: "Hawksbill_Sea_Turtle_Carey_de_Concha_(5840602412).jpg",
    primary_photo_content_type: "image/jpeg",
    primary_photo_file_size: 10715940,
    primary_photo_updated_at: "2016-10-09 02:41:33",
    section_id: 4,
    status: "3 species are sea turtles are classified by the IUCN Red List as \“Endangered\” or \“Critically Endangered,\” while an additional three are classified as \“Vulnerable.\”" },
  {name: "Parrots",
    description: "There are over 393 species of parrot, typically found in tropical and subtropical regions.These birds range from least concerned to critically endangered. Parrots are among the most intelligent birds and are often kept as pets. Trapping parrots for the pet trade, as well as habitat loss, has led to an overall decrease in the wild parrot population.",
    aliases: nil,
    primary_photo_file_name: "2488443606_b6c1bae061_z.jpg",
    primary_photo_content_type: "image/jpeg",
    primary_photo_file_size: 84358,
    primary_photo_updated_at: "2016-10-09 02:40:56",
    section_id: 4,
    status: "There are 394 species of parrots ranging from “Least Concern” to “Critically Endangered” by the IUCN Red List"
},
  {name: "Elephants",
    description: "Two species of Elephant are typically recognized: The African Elephant and the Asian Elephant. African elephants are considered vulnerable by the International Union for Conservation of Nature (IUCN), while Asian Elephants are classified as Endangered. One of the biggest threats to elephants is the ivory trade, but Elephants also face threats to their habitat and to conflicts with people.",
    aliases: nil,
    primary_photo_file_name: nil,
    primary_photo_content_type: nil,
    primary_photo_file_size: nil,
    primary_photo_updated_at: nil,
    section_id: 4,
    status: "African elephants are considered \“Vulnerable\” by the International Union for Conservation of Nature (IUCN), while Asian Elephants are classified as \“Endangered\”."
}
])
Country.create!([
  {name: "Jamaica", code: 0},
  {name: "Thailand", code: 0}
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
  {country_id: 1, issueable_id: 5, issueable_type: "ProductGroup", top_concern: false},
  {country_id: 2, issueable_id: 5, issueable_type: "AnimalGroup", top_concern: true},
  {country_id: 2, issueable_id: 6, issueable_type: "ProductGroup", top_concern: true}
])
Picture.create!([
  {picture_file_name: "4524663590_03cabbffab_m.jpg", picture_content_type: "image/jpeg", picture_file_size: 43544, picture_updated_at: "2016-10-09 14:07:40", name: "hawksbill 1", imageable_id: 3, imageable_type: "AnimalGroup"},
  {picture_file_name: "1024px-Loggerhead_sea_turtle.jpg", picture_content_type: "image/jpeg", picture_file_size: 99065, picture_updated_at: "2016-10-09 14:10:16", name: "sea turtle side eye", imageable_id: 3, imageable_type: "AnimalGroup"},
  {picture_file_name: "640px-Green_Sea_Turtle_grazing_seagrass.jpg", picture_content_type: "image/jpeg", picture_file_size: 87633, picture_updated_at: "2016-10-09 14:11:16", name: "sea turtle eating sea grass", imageable_id: 3, imageable_type: "AnimalGroup"}
])
Product.create!([
  {name: "Conch Meat",
    description: "The meat of conchs is eaten raw in salads, or cooked in burgers, chowders, fritters, and gumbos. All parts of the meat are edible. It is very popular in Caribbean islands.",
    product_group_id: 1,
    animal_group_id: 1,
    primary_photo_file_name: nil,
    primary_photo_content_type: nil,
    primary_photo_file_size: nil,
    primary_photo_updated_at: nil,
    recommendations: "The conch population varies amongst Caribbean countries, but there is one thing every tourist can do: Eat adult conch only."
},
  {name: "Conch Shell Jewelry",
    description: "Varying shades of pink and white shells can be carved into different shapes and found in necklaces, bracelets, and earrings. Sometimes the shells will be painted different colors.",
    product_group_id: 3,
    animal_group_id: 1,
    primary_photo_file_name: nil,
    primary_photo_content_type: nil,
    primary_photo_file_size: nil,
    primary_photo_updated_at: nil,
    recommendations: "The conch population varies amongst Caribbean countries. The best bet is to find some non-conch jewelry to enjoy."},
  {name: "Conch Shell Art",
    description: "Full Conch shells are often bought are taken from beaches to serve as decorative art pieces.", product_group_id: 2,
    animal_group_id: 1,
    primary_photo_file_name: "Sea_shell_(Trinidad__26_Tobago_2009).jpg",
    primary_photo_content_type: "image/jpeg",
    primary_photo_file_size: 3498295,
    primary_photo_updated_at: "2016-10-09 02:43:26",
    recommendations: "The conch population varies amongst Caribbean countries. Check local laws and regulations before buying conch art or removing conch  shells from the beach."},
  {name: "Iguana Meat",
    description: "Iguana meat is eaten by some populations in the Caribbean, and are still used as a meat source. They are often referred to as the \"chicken of the trees.\"",
    product_group_id: 1,
    animal_group_id: 2,
    primary_photo_file_name: nil,
    primary_photo_content_type: nil,
    primary_photo_file_size: nil,
    primary_photo_updated_at: nil,
    recommendations: nil},
  {name: "Sea Turtle Meat & Eggs",
    description: "Eating Sea Turtle meat is part of some culinary traditions and is considered a delicacy in some countries. There have been some attempts to farm sea turtles, however, there is currently only one sea turtle farm in operation, in the Cayman Islands.",
    product_group_id: 1,
    animal_group_id: 3,
    primary_photo_file_name: nil,
    primary_photo_content_type: nil,
    primary_photo_file_size: nil,
    primary_photo_updated_at: nil,
    recommendations:  "With almost all types of sea turtles being classified as \“Vulnerable\” to \“Critically Endangered,\” its is recommended that you always avoid eating sea turtle meat and/or eggs."},
  {name: "Tortoise Shell Jewelry",
    description: "Tortoise shell is produced from the shells of the larger species of tortoise and turtle, mainly the hawksbill sea turtle, which is endangered. Tortoise shell is often used in jewelry, including necklaces, combs, earrings, and bracelets.",
    product_group_id: 3,
    animal_group_id: 3,
    primary_photo_file_name: nil,
    primary_photo_content_type: nil,
    primary_photo_file_size: nil,
    primary_photo_updated_at: nil,
    recommendations: "Only purchase plastic \“tortoise shell\” jewelry. If you are unsure of the material, ask the merchant directly, or avoid buying the item."},
    {name: "Tortoise Shell Art",
    description: "Tortoise shell is produced from the shells of the larger species of tortoise and turtle, mainly the hawksbill sea turtle, which is endangered. Along with Jewelry, Tortoise shell can be used to create decorative pieces like artistic boxes, or embellishment to furniture.",
    product_group_id: 2,
    animal_group_id: 3,
    primary_photo_file_name: nil,
    primary_photo_content_type: nil,
    primary_photo_file_size: nil,
    primary_photo_updated_at: nil,
    recommendations: "Only purchase plastic \“tortoise shell\” jewelry. If you are unsure of the material, ask the merchant directly, or avoid buying the item."
  },
  {name: "Elephant Ivory Jewelry",
  description: "Elephant ivory is made from the tusks of elephants. Elephant tusks can be acquired from dead elephants, but many elephants are killed to acquire it. This has had a large impact on the elephant population, and now the import and sale of ivory is banned or severely restricted in many countries.",
  product_group_id: 3,
  animal_group_id: 5,
  primary_photo_file_name: nil,
  primary_photo_content_type: nil,
  primary_photo_file_size: nil,
  primary_photo_updated_at: nil,
  recommendations: "Avoid purchasing ivory jewelry on your travels. The laws and regulations covering the purhcase and import of ivory vary by country, but purchasing these products increases demand and leads to continued killing of elephants."}
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