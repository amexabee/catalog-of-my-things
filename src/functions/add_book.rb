require_relative '../book'
require_relative './input_cover'
require_relative './input_publish_date'

def add_book
  print 'Publisher: '
  publisher = gets.chomp
  cover_state = input_cover
  publish_date = input_publish_date
  book = Book.new(publisher, cover_state, publish_date)
  books << book
  puts 'Book added successfully'
end
