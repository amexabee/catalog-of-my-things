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
  3. List of games
  4. List all genres
  5. List all labels
  6. List all authors
  7. Add a book
  8. Add a music album
  9. Add a game
  10. Assign label
  11. Assign author
  12. Assign Genre
  0. Exit"
end
main
