def list_labels
  labels.each do |element|
    puts "#{element.title} (#{element.color})"
  end
end
