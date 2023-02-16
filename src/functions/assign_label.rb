require_relative '../label'
require_relative './show_books_items'
require_relative './show_games_items'
require_relative './show_music_items'

ITEMS_TYPE = %w[BOOK MUSIC GAME].freeze
def assign_label
  loop do
    puts 'Select the type of item that you want to add label:'
    ITEMS_TYPE.each_with_index do |item, index|
      puts "#{index + 1}- #{item}"
    end
    puts '0- BACK TO MENU'
    item_type = gets.chomp.to_i
    break if item_type.zero?

    case item_type
    when 1
      assign(books[show_books_items])
    when 2
      assign(music[show_music_items])
    when 3
      assign(games[show_games_items])
    else
      puts 'Select a correct type'
    end
  end
end

def select_label
  puts "\nSelect the label to assign or create a new one:"
  labels.each_with_index do |label, index|
    puts "#{index + 1}) #{label.title} - Color: #{label.color}"
  end
  puts '0) CREATE NEW LABEL'
  select_input = gets.chomp.to_i
  if select_input.zero?
    create_label
  else
    labels[select_input - 1]
  end
end

def create_label
  print 'Label title: '
  title = gets.chomp
  print 'Label color: '
  color = gets.chomp
  label = Label.new(title, color)
  labels << label
  label
end

def assign(item)
  label = select_label
  item.add_label(label)
  puts 'Label assigned successfully'
end
