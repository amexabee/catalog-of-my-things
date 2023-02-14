require_relative 'item'

class Game < Item
  attr_reader :multiplayer, :last_played_at
  def initialize(multiplayer, last_played_at, publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    super(publish_date)
  end
end
