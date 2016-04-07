require "rspec"
require_relative "../lib/blog.rb"
require_relative "../lib/post.rb"


describe Blog do
  before(:each) do
    @post1 = Post.new("1","11","John G", "March")
  end
  describe "get category" do
    it "should access the post's category" do
      expect(@post1.category).to eq("March")
    end
  end
  describe "get author" do
    it "should access the post's author" do
      expect(@post1.author).to eq("John G")
    end
  end
end
