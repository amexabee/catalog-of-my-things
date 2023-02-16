require_relative './app'
require_relative './functions/handler'

def main
  app = App.new
  on_entry(app)
  puts 'Welcome to My Catalog of Things'
  app.load
  loop do
    show_menu
    input = gets.chomp.to_i
    if input.zero?
      app.save_data
      puts "\nGood Bye."
      on_exit(app)
      break
    end
    app.options(input)
  end
end

def show_menu()
  puts "\nPlease choose an option by entering a number
  1. List all books
  2. List all music albums
  3. List all movies
  4. List of games
  5. List all genres
  6. List all labels
  7. List all authors
  8. List all sources
  9. Add a book
  10. Add a music album
  11. Add a movie
  12. Add a game
  13. Assign label
  14. Assign author
  15. Assign Genre
  0. Exit"
end
main
