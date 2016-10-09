class AddStatusToAnimalGroups < ActiveRecord::Migration
  def change
    add_column :animal_groups, :status, :text
  end
end
