require_relative './file_write'

def save_books
  arr = []
  books.each do |book|
    obj = {
      'publisher' => book.publisher,
      'cover_state' => book.cover_state,
      'publish_date' => book.publish_date
    }
    arr.push(obj)
  end
  file_write(arr, 'books')
end

def save_labels
  arr = []
  labels.each do |label|
    items = []
    label.items.each_with_index do |item, index|
      data = {
        'type' => item.class,
        'index' => index
      }
      items.push data
    end
    obj = {
      'title' => label.title,
      'color' => label.color,
      'items' => items
    }
    arr.push(obj)
  end
  file_write(arr, 'labels')
end
