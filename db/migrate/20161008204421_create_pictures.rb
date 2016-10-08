class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.attachment :picture
      t.string :name
      t.references :imageable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
