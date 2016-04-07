require "rspec"
require_relative "../lib/blog.rb"
require_relative "../lib/post.rb"


describe Blog do
  before(:each) do
    @blog = Blog.new
    @post1 = Post.new("1","11","John G", "March")
    @new_post = Post.new("13","3", "John G", "May")
    @blog.add_post(@post1)
    @blog.add_post(@new_post)
  end
  describe "#add_post" do
    it "should add a post to the blog" do
      expect(@blog.posts.last).to eq(@new_post)
    end
  end
  describe "#latest_posts" do
    it "should return the posts array in chronological order" do
      expect(@blog.latest_posts).to eq([@new_post, @post1])
    end
  end
end
