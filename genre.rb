require_relative 'item'

class Genre < Item
  attr_accessor :name

  def initialize(name)
    @id = Random.rand(1...1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item << self
  end
end