require_relative '../src/author'
require_relative '../src/item'

describe Author do
  before :each do
    @author = Author.new 'Stephen', 'King'
    @item = Item.new '2023-02-13'
  end
  describe 'Testing for Book Class' do
    it 'Take 2 parameters and return a Book object' do
      expect(@author).to be_instance_of Author
    end

    it 'Return the correct firstname' do
      expect(@author.first_name).to eql 'Stephen'
    end

    it 'Return the correct lastname' do
      expect(@author.last_name).to eql 'King'
    end

    it 'Add item method should add an item to the list of items' do
      @author.add_item(@item)
      expect(@author.items).to include(@item)
    end
  end
end
