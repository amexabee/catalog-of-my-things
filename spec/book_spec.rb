require_relative '../src/book'

describe Book do
  describe 'Testing for Book Class' do
    it 'Take 3 parameters and return a Book object' do
      @book = Book.new 'Publisher', 'ok', '2023-01-01'
      expect(@book).to be_instance_of Book
    end

    it 'Return archived false when send ok in cover_state and publish date < 10 years' do
      @book = Book.new 'Publisher', 'ok', '2023-01-01'
      @book.move_to_archive?
      expect(@book.archived).to be false
    end

    it 'Return archived true when send bad in cover_state' do
      @book = Book.new 'Publisher', 'bad', '2023-01-01'
      @book.move_to_archive?
      expect(@book.archived).to be true
    end

    it 'Return archived true when send publish date < 10 years' do
      @book = Book.new 'Publisher', 'ok', '2000-01-01'
      @book.move_to_archive?
      expect(@book.archived).to be true
    end
  end
end
