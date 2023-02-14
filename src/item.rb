class Item
  attr_reader :id, :archived

  def initialize(publish_date, archived: false)
    @id = Random.rand(1...1000)
    @publish_date = publish_date
    @archived = archived
  end

  def author(author)
    @author = author
  end

  def genre(genre)
    @genre = genre
  end

  def source(source)
    @source = source
  end


  def add_label(label)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end
end
