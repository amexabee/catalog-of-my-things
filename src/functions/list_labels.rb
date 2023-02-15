def list_labels
  puts 'List of Labels:'
  puts 'No labels in the catalog' if labels.empty?
  labels.each do |element|
    puts "ID: #{element.id} - Title: #{element.title} - Color: #{element.color}"
  end
end
