require_relative '../genre'
require_relative 'inputs'

ITEMS_TYPE = %w[BOOK MUSIC GAME MOVIE].freeze

def assign_genre
  loop do
    puts 'Select the type of item that you want to add genre:'
    ITEMS_TYPE.each_with_index do |item, index|
      puts "#{index + 1}- #{item}"
    end
    puts '0- BACK TO MENU'
    item_type = gets.chomp.to_i
    break if item_type.zero?

    show_books_genre if item_type == 1
    show_music_genre if item_type == 2
    show_games_genre if item_type == 3
  end
end

def show_music_genre
  if music.empty?
    puts "No music in catalog\n\n"
    return
  end
  puts 'Select the music to assign genre by index number'
  music.each_with_index do |music, index|
    puts "#{index}) Release-Date: #{music.publish_date}, On-Spotify: #{music.on_spotify}"
  end
  selected_index = gets.chomp.to_i
  print 'Genre name: '
  input = gets.chomp
  genre = Genre.new(input)
  music[selected_index].add_genre(genre)
  genres << genre
  music_genre_fl.push(music_id: selected_index, genre_id: genres.length - 1)
  puts 'Genre assigned successfully'
end

def show_books_genre
  if books.empty?
    puts "No books in catalog\n\n"
    return
  end
  puts 'Select the book to assign genre by index number'
  books.each_with_index do |book, index|
    puts "#{index}) #{book.publisher} - #{book.publish_date} - #{book.cover_state}"
  end
  selected_index = gets.chomp.to_i
  print 'Genre name: '
  input = gets.chomp
  genre = Genre.new(input)
  books[selected_index].add_genre(genre)
  genres << genre
  music_genre_fl.push(music_id: selected_index, genre_id: genres.length - 1)
  puts 'Genre assigned successfully'
end

def show_games_genre
  if games.empty?
    puts "No games in catalog\n\n"
    return
  end
  puts 'Select the game to assign genre by index number'
  games.each_with_index do |game, index|
    puts "#{index}) #{game.multiplayer} - #{game.publish_date}"
  end
  selected_index = gets.chomp.to_i
  print 'Genre name: '
  input = gets.chomp
  genre = Genre.new(input)
  games[selected_index].add_genre(genre)
  genres << genre
  music_genre_fl.push(music_id: selected_index, genre_id: genres.length - 1)
  puts 'Genre assigned successfully'
end
