class Post < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :comments
  belongs_to :author
end
