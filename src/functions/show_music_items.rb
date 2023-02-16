def show_music_items
  if music.empty?
    puts "No music in catalog\n\n"
    return
  end
  puts 'Select the music to assign label by index number'
  music.each_with_index do |music, index|
    puts "#{index}) #{music.publish_date} - #{music.on_spotify}"
  end
  gets.chomp.to_i
end
