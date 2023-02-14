require_relative '../book'

def add_book
  print 'Publisher: '
  publisher = gets.chomp
  print 'Cover State (good, bad): '
  cover_state = gets.chomp
  print 'Publish Date (YYYY-MM-DD): '
  publish_date = gets.chomp
  book = Book.new(publisher, cover_state, publish_date)
  books << book
  puts 'Book added successfully'
end
