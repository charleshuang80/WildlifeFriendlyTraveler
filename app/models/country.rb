class Country < ActiveRecord::Base
  has_many :country_issues

  has_many :animal_groups, through: :country_issues, source: :issueable, source_type: 'AnimalGroup'
  has_many :product_groups, through: :country_issues, source: :issueable, source_type: 'ProductGroup'
end
