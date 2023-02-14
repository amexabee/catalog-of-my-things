def list_books
  books.each do |element|
    puts "[#{element.class}] ID: #{element.id} - Publisher: #{element.publisher} - Cover State: #{element.cover_state}"
  end
end
