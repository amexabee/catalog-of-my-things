def list_music_albums
  puts 'List of Music Albums'
  puts 'No music albums in the catalog' if music.empty?
  music.each_with_index do |album, index|
    puts "(#{index + 1}) ID: #{album.id}, Publish-Date: #{album.publish_date}, On-spotify: #{album.on_spotify}"
  end
  print "\n"
end
