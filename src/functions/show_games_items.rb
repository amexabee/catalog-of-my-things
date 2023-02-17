def show_games_items
  if games.empty?
    puts "No games in catalog\n\n"
    return
  end
  puts 'Select the game to assign label by index number'
  games.each_with_index do |game, index|
    puts "#{index}) #{game.multiplayer} - #{game.publish_date}"
  end
  gets.chomp.to_i
end
