class Post
  attr_reader :title, :text
  attr_accessor :category, :author, :date
  def initialize(title, text)
    @title = title
    @date = Time.now
    @text = text
    @author = "John G"
    @category = "April"
  end
  def display
    puts @title
    puts "**************"
    puts @text
    puts "----------------"
  end
end
