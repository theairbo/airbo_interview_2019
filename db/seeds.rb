raw_genres = [
  "Action and adventure",
  "Art",
  "Alternate history",
  "Autobiography",
  "Anthology",
  "Biography",
  "Chick lit",
  "Book review",
  "Children's literature",
  "Cookbook",
  "Comic book",
  "Diary",
  "Coming-of-age",
  "Dictionary",
  "Crime",
  "Encyclopedia",
  "Drama",
  "Guide",
  "Fairytale",
  "Health",
  "Fantasy",
  "History",
  "Graphic novel",
  "Journal",
  "Historical fiction",
  "Math",
  "Horror",
  "Memoir",
  "Mystery",
  "Prayer",
  "Paranormal romance",
  "Religion, spirituality, and new age",
  "Picture book",
  "Textbook",
  "Poetry",
  "Review",
  "Political thriller",
  "Science",
  "Romance",
  "Self help",
  "Satire",
  "Travel",
  "Science fiction",
  "True crime",
  "Short story",
  "Suspense",
  "Thriller",
  "Young adult"
]

puts "Seeding genres"
raw_genres.each { |g| Genre.create(name: g) }

puts "Seeding books"
Book.create(Array.new(5000).map { |a| {title: "#{Faker::Book.title} #{Faker::WorldOfWarcraft.hero} #{rand(5000)}", author: Faker::Book.author, genre: Genre.find(rand(raw_genres.length) + 1)} })

puts "Seeding users"
User.create(Array.new(2000).map { |a| {name: Faker::Zelda.character, joined_book_club: Faker::Date.between(3.years.ago, Date.today)} })

puts "Seeding user book collections"
User.all.each do |user|
  UsersBook.create(Array.new(rand(15) + 1).map { |a| {user: user, book: Book.find(rand(4998) + 1), amount: (rand(20) + 1)} })
end
