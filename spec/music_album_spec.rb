require_relative '../src/item'
require_relative '../src/music_album'

describe MusicAlbum do
  before :each do
    @item = Item.new '2023-02-13'
    @music_album = MusicAlbum.new(@item, '2023-02-13')
  end
  describe 'Testing for Music Album' do
    it 'Take an item object to return a MusicAlbum object' do
      expect(@music_album).to be_instance_of MusicAlbum
    end
    it 'Tests if the music album can be archived' do
      @music_album.move_to_archive?
      expect(@music_album.archived).to be false
    end
  end
end
