class AddCollectionContraint < ActiveRecord::Migration
  def self.up
    add_column :photos, :collection_id, :integer
  end

  def self.down
    remove_column :photos, :collection_id
  end
end
