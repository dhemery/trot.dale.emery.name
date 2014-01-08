activate :blog do |blog|
  blog.sources = "posts/:year-:month-:title"
  blog.default_extension = ".md"

  blog.layout = "post"
  blog.permalink = ":year/:month/:title"

  blog.tag_template = "tags.html"
  blog.taglink = "tag/:tag/index.html"

  blog.paginate = true
  blog.page_link = "page/:num"
  blog.per_page = 10
end

page "/feed.xml", layout: false
