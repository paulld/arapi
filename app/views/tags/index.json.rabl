object false

child @tags do
  attributes :id, :title, :body

  node :links do |tag|
    {
      articles: tag.articles.map {|a| a.id }
    }
  end

  node :href do |tag|
    tag_url(tag)
  end
end

node :links do
  {
    "tags.articles" => articles_url + "/{tags.articles}"
  }
end

node :meta do
  { "client-ids" => true }
end