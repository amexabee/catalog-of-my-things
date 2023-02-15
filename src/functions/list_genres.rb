def list_genres
  puts 'List of Genres'
  puts 'No genres in the catalog' if genres.empty?
  genres.each do |genre|
    puts "Genre: #{genre.name}"
  end
  print "\n"
end
