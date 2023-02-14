require_relative '../src/game'

describe Game do
  before :each do
    @game = Game.new 'multiplayer', '2023-02-14', '2023-02-13'
  end
  describe 'Testing for Book Class' do
    it 'Take 2 parameters and return a Book object' do
      expect(@game).to be_instance_of Game
    end

    it 'Return the correct multiplayer setting' do
      expect(@game.multiplayer).to eql 'multiplayer'
    end

    it 'Return the correct last played date' do
      expect(@game.last_played_at).to eql '2023-02-14'
    end

    it 'Return the correct published date' do
      expect(@game.publish_date).to eql '2023-02-13'
    end

    it 'Returns whether game can be archived or not' do
      expect(@game.can_be_archived?).to eql false
    end
  end
end