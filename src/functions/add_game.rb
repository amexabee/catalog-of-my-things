require_relative '../game'
require_relative 'inputs'

def add_game
  print 'Multiplayer: '
  multiplayer = gets.chomp
  last_played_at = input_last_played_date
  publish_date = input_publish_date
  game = Game.new(multiplayer, last_played_at, publish_date)
  games << game
  puts 'Game added successfully'
end
