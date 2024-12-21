# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
puts "Resetting fake article..."
Article.destroy_all

puts "Creating fake restaurants..."

10.times do |index|
  article = Article.create!(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraph(sentence_count: 20)
  )

  puts "Created #{article.title}"
end

puts "Seed!"
