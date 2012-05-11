class Post
  include Mongoid::Document
  field :title
  field :body
  belongs_to :category
end