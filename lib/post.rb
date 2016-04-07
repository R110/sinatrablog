class Post
  attr_reader :title, :text
  attr_accessor :category, :author, :date
  def initialize(title, text, author, city)
    @title = title
    @date = Time.now
    @text = text
    @author = author
    @category = city
  end
end
