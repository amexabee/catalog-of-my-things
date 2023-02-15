def list_music_albums
  puts 'List of Music Albums'
  puts 'No music albums in the catalog' if music.empty?
  music.each do |album|
    puts "ID: #{album.id} - On spotify: #{album.on_spotify}"
  end
  print "\n"
end
