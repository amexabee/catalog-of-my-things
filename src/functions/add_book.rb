require_relative '../book'
require_relative './inputs'

def add_book
  print 'Publisher: '
  publisher = gets.chomp
  cover_state = input_cover
  publish_date = input_publish_date
  book = Book.new(publisher, cover_state, publish_date)
  books << book
  puts 'Book added successfully'
end
