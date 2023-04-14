puts "🌱 Seeding spices..."


books = [
  { title: "To Kill a Mockingbird", author: "Harper Lee", category: "Fiction", borrower_id: nil },
  { title: "The Great Gatsby", author: "F. Scott Fitzgerald", category: "Fiction", borrower_id: 1 },
  { title: "1984", author: "George Orwell", category: "Science Fiction", borrower_id: 2 },
  { title: "Pride and Prejudice", author: "Jane Austen", category: "Romance", borrower_id: nil },
  { title: "The Hobbit", author: "J.R.R. Tolkien", category: "Fantasy", borrower_id: 3 }
]

books.each do |book|
  Book.create(book)
end


members = [
  { name: "John Doe", member_number: "1234-5678-9012", mobile_number: "+1 555-555-5555" },
  { name: "Jane Smith", member_number: "2345-6789-0123", mobile_number: "+1 555-555-5556" },
  { name: "Bob Johnson", member_number: "3456-7890-1234", mobile_number: "+1 555-555-5557" },
  { name: "Alice Brown", member_number: "4567-8901-2345", mobile_number: "+1 555-555-5558" }
]

members.each do |member|
  Member.create(member)
end



puts "✅ Done seeding!"
