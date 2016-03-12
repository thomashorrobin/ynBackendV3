json.array!(@blog_posts) do |blog_post|
  json.extract! blog_post, :id, :title, :content, :posted_on, :Blog_id, :Individual_id
  json.url blog_post_url(blog_post, format: :json)
end
