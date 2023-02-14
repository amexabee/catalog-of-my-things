require_relative '../src/label'
require_relative '../src/item'

describe Label do
  describe 'Testing for Label Class' do
    before :each do
      @label = Label.new 'title', 'color'
    end

    it 'Take 2 parameters and return a Label object' do
      expect(@label).to be_instance_of Label
    end

    it 'Return the correct Title' do
      expect(@label.title).to eql 'title'
    end

    it 'Return the correct items length when added' do
      @item = Item.new('2023-01-01')
      @label.add_item(@item)
      expect(@label.items.length).to be 1
    end
  end
end
