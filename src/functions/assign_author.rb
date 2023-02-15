require_relative '../author'

ITEMS_TYPE = %w[BOOK MUSIC GAME MOVIE].freeze
def assign_author
  loop do
    puts 'Select the type of item that you want to add author:'
    ITEMS_TYPE.each_with_index do |item, index|
      puts "#{index + 1}- #{item}"
    end
    puts '0- BACK TO MENU'
    item_type = gets.chomp.to_i
    break if item_type.zero?

    show_books if item_type == 1
    show_games if item_type == 3
  end
end

def show_books
  if books.empty?
    puts "No books in catalog\n\n"
    return
  end
  puts 'Select the book to assign label by index number'
  books.each_with_index do |book, index|
    puts "#{index}) #{book.publisher} - #{book.publish_date} - #{book.cover_state}"
  end
  selected_index = gets.chomp.to_i
  print 'Author first name: '
  first_name = gets.chomp
  print 'Author second name: '
  second_name = gets.chomp
  author = Author.new(first_name, second_name)
  books[selected_index].add_author(author)
  authors << author
  puts 'Author assigned successfully'
end

def show_games
  if games.empty?
    puts "No games in catalog\n\n"
    return
  end
  puts 'Select the game to assign label by index number'
  games.each_with_index do |game, index|
    puts "#{index}) #{game.multiplayer} - #{game.publish_date}"
  end
  selected_index = gets.chomp.to_i
  print 'Author first name: '
  first_name = gets.chomp
  print 'Author second name: '
  second_name = gets.chomp
  author = Author.new(first_name, second_name)
  books[selected_index].add_author(author)
  authors << author
  puts 'Author assigned successfully'
end
