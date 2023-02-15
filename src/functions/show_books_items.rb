def show_books_items
  if books.empty?
    puts "No books in catalog\n\n"
    return
  end
  puts 'Select the book to assign label by index number'
  books.each_with_index do |book, index|
    puts "#{index}) #{book.publisher} - #{book.publish_date} - #{book.cover_state}"
  end
  gets.chomp.to_i
end
