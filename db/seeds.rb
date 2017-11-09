puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: "Uncle",
    address: "Denver, CO",
    category: "japanese",

  },

  {
    name: "Lola",
    address: "Denver, CO",
    category: "italian",

  },

  {
    name: "Dave",
    address: "Paris, France",
    category: "french",

  },

  {
    name: "Sund Sundt",
    address: "CPH, Danmark",
    category: "belgian",

  },

  {
    name: "US Thai",
    address: "Denver, CO",
    category: "belgian",

  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
