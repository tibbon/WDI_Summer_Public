class Weapon < ActiveRecord::Base
  attr_accessible :name, :slain, :slug, :weapon_type
end
