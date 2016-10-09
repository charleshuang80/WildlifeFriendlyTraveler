class Picture < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true

  has_attached_file :picture
  # we are not validating because users are not uploading photos
  do_not_validate_attachment_file_type :picture

  # this method lets us add photos from a url in the console
  def picture_from_url(url)
    self.picture = URI.parse(url)
  end

end
