class AddFilenameToPhotos < ActiveRecord::Migration
  def self.up
    add_column :photos, :filename, :string
  end

  def self.down
    remove_column :photos, :filename
  end
end
