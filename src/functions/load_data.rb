require_relative '../book'
require_relative '../game'
require_relative '../label'
require_relative '../author'
require_relative './file_read'

def load_data
  puts 'LOADING DATA...'
  load_books
  load_games
  load_labels
  load_authors
end

def load_books
  book_data = file_read('books')
  book_data.each do |item|
    book = Book.new(item['publisher'], item['cover_state'], item['publish_date'])
    books << book
  end
end

def load_games
  game_data = file_read('games')
  game_data.each do |item|
    game = Game.new(item['multiplayer'], item['last_played_at'], item['publish_date'])
    games << game
  end
end

def load_labels
  label_data = file_read('labels')
  label_data.each do |item|
    label = Label.new(item['title'], item['color'])
    item['items'].each do |element|
      case element['type']
      when 'Book'
        books[element['index']].add_label(label)
      when 'Game'
        games[element['index']].add_label(label)
      end
    end
    labels << label
  end
end

def load_authors
  author_data = file_read('authors')
  author_data.each do |item|
    author = Author.new(item['first_name'], item['last_name'])
    item['items'].each do |element|
      case element['type']
      when 'Book'
        books[element['index']].add_author(author)
      when 'Game'
        games[element['index']].add_author(author)
      end
    end
    authors << author
  end
end
