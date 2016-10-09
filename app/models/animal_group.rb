class AnimalGroup < ActiveRecord::Base
  belongs_to :section
  has_many :products
  has_many :pictures, as: :imageable

  has_many :country_issues, as: :issueable
  has_many :countries, through: :country_issues

  has_attached_file :primary_photo
  # we are not validating because users are not uploading photos
  do_not_validate_attachment_file_type :primary_photo

  # this method lets us add photos from a url in the console
  def picture_from_url(url)
    self.primary_photo = URI.parse(url)
  end
end
