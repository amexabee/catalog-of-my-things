def list_books
  puts 'List of Books'
  puts 'No books in the catalog' if books.empty?
  books.each do |element|
    print "ID: #{element.id} - Publisher: #{element.publisher} - Cover State: #{element.cover_state}"
    print " - Publish Date: #{element.publish_date}\n"
  end
end
