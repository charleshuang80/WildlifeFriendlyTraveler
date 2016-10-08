class AnimalGroup < ActiveRecord::Base
  belongs_to :section
  has_many :products
  has_many :pictures, as: :imageable

end
