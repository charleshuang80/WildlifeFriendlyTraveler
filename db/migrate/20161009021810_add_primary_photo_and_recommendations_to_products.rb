class AddPrimaryPhotoAndRecommendationsToProducts < ActiveRecord::Migration
  def change
    add_attachment :products, :primary_photo
    add_column :products, :recommendations, :text
  end
end
