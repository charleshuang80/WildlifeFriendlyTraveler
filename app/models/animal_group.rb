class AnimalGroup < ActiveRecord::Base
  belongs_to :section
  has_many :products
  has_many :pictures, as: :imageable

  has_many :country_issues, as: :issueable
  has_many :countries, through: :country_issues

  has_attached_file :primary_photo
end
