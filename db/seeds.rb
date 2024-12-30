recipe1 = Recipe.create(name: "Khichdi", instructions: "Add water. Boil rice. ", cooking_time: 15, cuisine: "Indian")
recipe2 = Recipe.create(name: "Tacos", instructions: "Prepare filling. Serve in tortillas.", cooking_time: 10, cuisine: "Mexican")

recipe1.ingredients.create([{ name: "rice" }, { name: "water" }])
recipe2.ingredients.create([{ name: "Tortilla" }, { name: "Beans" }])

puts "Seeded database with recipes and ingredients!"