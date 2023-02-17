def list_genres
  puts 'List of Genres'
  puts 'No genres in the catalog' if genres.empty?
  genres.each_with_index do |genre, index|
    puts "(#{index + 1}) #{genre.name}"
  end
  print "\n"
end
