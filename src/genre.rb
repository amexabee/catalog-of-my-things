require_relative 'item'

class Genre < Item
  attr_accessor :name
  attr_reader :id, :items

  def initialize(name)
    @id = Random.rand(1...1000)
    @name = name
    @items = []
    super
  end

  def add_item(item)
    @items.push(item)
    item.add_genre(self)
  end
end
