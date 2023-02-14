require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(item, publish_date, on_spotify: false)
    super(publish_date)
    @item = item
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end
end
