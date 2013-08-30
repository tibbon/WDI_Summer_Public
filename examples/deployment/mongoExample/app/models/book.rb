# This is a book. Books have titles and content.
class Book
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
end
