class Blog
  attr_reader :posts
  def initialize
    @posts = []
  end
  def add_post(post)
    @posts << post
  end

  def latest_posts
    @posts.sort_by{|post| post.date }.reverse
  end
end
