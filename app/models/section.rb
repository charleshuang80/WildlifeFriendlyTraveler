class Section < ActiveRecord::Base
  has_many :animal_groups
  has_many :product_groups

end
