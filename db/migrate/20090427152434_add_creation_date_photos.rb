class AddCreationDatePhotos < ActiveRecord::Migration
  def self.up
    add_column :photos, :creationDate, :date
  end

  def self.down
    remove_column :photos, :creationDate
  end
end
