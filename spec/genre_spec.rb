require_relative '../src/genre'
require_relative '../src/item'

describe Genre do
  before :each do
    @genre = Genre.new('Comic', '2023-02-13')
    @item = Item.new '2023-02-13'
  end
  describe 'Testing for Genre class' do
    it 'takes a genre name and returns a Genre object' do
      expect(@genre).to be_instance_of Genre
    end
    it 'Return the correct genre name' do
      expect(@genre.name).to eql 'Comic'
    end
    it 'Add genre method should add a genre to the list of items' do
      @genre.add_item(@item)
      expect(@genre.items).to include(@item)
    end
  end
end