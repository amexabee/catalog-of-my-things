require_relative 'input_publish_date'
require_relative '../music_album'

def validate_spotify(val)
  val.downcase[0, 1] == 'y'
end

def add_music_album
  publish_date = input_publish_date
  print 'On spotify [yes, no]: '
  input = gets.chomp.to_s
  on_spotify = validate_spotify(input)
  puts "#{publish_date} - on-spotify: #{on_spotify}"
  album = MusicAlbum.new(publish_date, on_spotify: on_spotify)
  music << album
  puts 'Music Album added successfully'
end
