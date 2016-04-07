class Blog
    def initialize
    @posts = []
    @current_page = 1
    @last_page = (@posts.length / 3).ceil
  end
  def add_post(post)
    @posts << post
  end

  def latest_posts
    @posts.sort_by{|post| post.date }.reverse
  end

  def posts
      @posts
  end

  def publish_front_page
      first_post = (@current_page-1) * 3
      last_post = (first_post +3) -1
      current_posts = @posts[first_post..last_post]
      current_posts.each do |p|
        p.display
      end
    end

  def next_page
    if @current_page != @last_page
      @current_page += 1
      publish_front_page
    end
  end

def previous_page
  if @current_page != 1
    @current_page -= 1
  end
  publish_front_page
end

def last_page?
  @current_page == @last_page
end


end
