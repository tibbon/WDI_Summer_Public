class Todo < ActiveRecord::Base
  has_and_belongs_to_many :contacts
  attr_accessible :task
end