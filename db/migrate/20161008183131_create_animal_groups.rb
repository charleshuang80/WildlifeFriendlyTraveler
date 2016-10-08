class CreateAnimalGroups < ActiveRecord::Migration
  def change
    create_table :animal_groups do |t|
      t.string :name
      t.text :description
      t.text :aliases
      t.attachment :primary_photo
      t.references :section, index: true, foreign_key: true

      t.timestamps
    end
  end
end
