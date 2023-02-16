require_relative '../book'
require_relative '../label'
require_relative './file_read'

def load_data
  puts 'LOADING DATA...'
  load_books
  load_labels
end

def load_books
  book_data = file_read('books')
  book_data.each do |item|
    book = Book.new(item['publisher'], item['cover_state'], item['publish_date'])
    books << book
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
