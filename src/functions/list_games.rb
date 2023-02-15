def list_games
  puts 'List of Games'
  puts 'No games in the catalog' if games.empty?
  games.each do |element|
    print "ID: #{element.id} - Multiplayer: #{element.multiplayer}"
    print " - Publish Date: #{element.publish_date}"
  end
  print "\n"
end
