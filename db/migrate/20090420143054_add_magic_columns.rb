class AddMagicColumns < ActiveRecord::Migration
  def self.up
    add_column :photos, :image_width, :integer
    add_column :photos, :image_height, :integer
  end

  def self.down
    remove_column :photos, :image_width
    remove_column :photos, :image_height
  end
end
