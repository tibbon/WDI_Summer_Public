class Review < ActiveRecord::Base
  belongs_to :product, touch: true
  belongs_to :user, touch: true
end