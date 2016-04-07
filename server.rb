require "sinatra"
require_relative "lib/blog.rb"
require_relative "lib/post.rb"

blog = Blog.new

blog.add_post Post.new("first post", "11")
blog.add_post Post.new("second post", "22")

get "/" do
  @posts = blog.posts
  erb(:home)
end

post "/latest" do
  @posts = blog.latest_posts
  erb(:home)
end

get "/post_details/:id" do
  @post_id = params[:id].to_i
  @posts = blog.latest_posts
  erb(:post_details)
end

get "/new_post_form" do
  erb(:post_form)
end

post "/sort_posts" do
  category = params[:post_category]
  @posts = blog.latest_posts.select{|post| post.category == category}
  erb(:home)
end

post "/new_post" do
  title = params[:new_post_title]
  text = params[:new_post_text]
  blog.add_post(Post.new(title, text))
  @posts = blog.latest_posts
  redirect "/"
end
