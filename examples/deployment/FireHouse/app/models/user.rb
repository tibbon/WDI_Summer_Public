class User < ActiveRecord::Base
  attr_accessible :u_id
  has_many :tweets
end
