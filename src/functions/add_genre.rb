require_relative 'input_publish_date'
require_relative '../genre'

def add_genre
  publish_date = input_publish_date
  print 'Genre name: '
  input = gets.chomp.to_s
  genre = Genre.new(input, publish_date)
  genres << genre
  puts 'Genre added successfully'
end