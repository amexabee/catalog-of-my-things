def list_authors
  puts 'List of Authors:'
  puts 'No authors in the catalog' if authors.empty?
  labels.each do |element|
    puts "ID: #{element.id} - First Name: #{element.first_name} - Last Name: #{element.last_name}"
  end
end
