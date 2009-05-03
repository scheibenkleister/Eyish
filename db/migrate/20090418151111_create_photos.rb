class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.binary :image_file_data, :limit => 16.megabyte
      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
