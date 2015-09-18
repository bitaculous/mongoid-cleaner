# = Article
#
# Article class for testing purpose.
class Article
  include Mongoid::Document
  include Mongoid::Timestamps

  # === Configuration ===

  # Store documents in the collection named `articles`.
  store_in collection: 'articles'

  # === Fields ===

  field :title
end