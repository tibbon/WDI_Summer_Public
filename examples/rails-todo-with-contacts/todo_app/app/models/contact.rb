class Contact < ActiveRecord::Base
  has_and_belongs_to_many :todos
  attr_accessible :name
end