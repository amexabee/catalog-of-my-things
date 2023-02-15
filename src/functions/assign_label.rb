require_relative '../label'

ITEMS_TYPE = %w[BOOK MUSIC MOVIE GAME].freeze
def assign_label
  loop do
    puts 'Select the type of item that you want to add label:'
    ITEMS_TYPE.each_with_index do |item, index|
      puts "#{index + 1}- #{item}"
    end
    puts '0- BACK TO MENU'
    item_type = gets.chomp.to_i
    break if item_type.zero?

    show_books if item_type == 1
  end
end

def show_books
  puts 'Select the book to assign label by index number'
  if books.empty?
    puts "No books in catalog\n"
    return
  end
  books.each_with_index do |book, index|
    puts "#{index}) #{book.publisher} - #{book.publish_date} - #{book.cover_state}"
  end
  selected_index = gets.chomp.to_i
  print 'Label title: '
  title = gets.chomp
  print 'Label color: '
  color = gets.chomp
  label = Label.new(title, color)
  books[selected_index].add_label(label)
  labels << label
  puts 'Label assigned successfully'
end
