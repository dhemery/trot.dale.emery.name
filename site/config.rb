activate :blog do |blog|
    blog.sources = "posts/:year-:month-:title"
    blog.default_extension = ".md"

    blog.layout = "post"
    blog.permalink = ":year/:month/:title"

    blog.tag_template = "categories.html"
    blog.taglink = "tag/:tag/index.html"

    blog.paginate = false
end

page "/feed.xml", layout: false
