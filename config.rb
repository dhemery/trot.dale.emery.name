Time.zone = "Pacific Time (US & Canada)"

activate :blog do |blog|
    blog.sources = "posts/:year/:month/:title"
    blog.default_extension = ".md"

    blog.layout = "post"
    blog.permalink = ":year/:month/:title"

    blog.tag_template = "tag.html"
    blog.taglink = "tag/:tag/index.html"

    blog.paginate = false
end

page "/atom.xml", layout: false

activate :directory_indexes

configure :build do
end
