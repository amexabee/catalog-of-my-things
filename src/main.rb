def main
  puts 'Welcome to My Catalog of Things'

  list1 = ['1. List all books', '2. List all music albums', '3. List all movies', '4. List of games']
  list2 = ['5. List all genres', '6. List all labels', '7. List all authors', '8. List all sources ']
  add = ['9. Add a book', '10. Add a music album', '11. Add a movie', '12. Add a game']

  loop do
    puts "\nPlease choose an option by entering a number"
    puts list1
    puts list2
    puts add
    puts '13. Exit'

    input = gets.chomp.to_i
    if input == 13
      puts "\nGood Bye."
      break
    end
  end
end
main
