def main
  puts 'Welcome to My Catalog of Things'

  loop do
    puts "\nPlease choose an option by entering a number
    1. Get genre
    2. Get author
    3. Get source
    4. Get label
    5. Get published date
    6. Exit"
    input = gets.chomp.to_i
    if input == 6
      puts "\nGood Bye."
      break
    end
  end
end
main
