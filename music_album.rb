require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(item, on_spotify: false)
    super()
    @item = item
    @on_spotify = on_spotify
  end

  def can_be_archived?
    @item.can_be_archived && @on_spotify
  end
end
