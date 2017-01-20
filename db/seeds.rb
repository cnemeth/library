# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

genres = ["Science",
          "Fiction",
          "Satire",
          "Drama",
          "Action and Adventure",
          "Romance",
          "Mystery",
          "Horror",
          "Self help",
          "Health",
          "Guide",
          "Travel",
          "Children's",
          "Religion, Spirituality & New Age",
          "Science",
          "History",
          "Math",
          "Anthology",
          "Poetry",
          "Encyclopedias",
          "Dictionaries",
          "Comics",
          "Art",
          "Cookbooks",
          "Diaries",
          "Journals",
          "Prayer books",
          "Series",
          "Trilogy",
          "Biographies",
          "Autobiographies",
          "Fantasy"]

genres.map{|genre| Genre.where(name: genre).first_or_create! }
