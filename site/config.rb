activate :blog do |blog|
  blog.sources = "posts/{year}-{month}-{title}"
  blog.default_extension = ".md"

  blog.layout = "post"
  blog.tag_template = "categories.html"

  blog.paginate = true
  blog.page_link = "page/{num}"
  blog.per_page = 10

  blog.permalink = "{year}/{month}/{title}"
  blog.taglink = "category/{tag}/index.html"
end

page "/feed.xml", layout: false
