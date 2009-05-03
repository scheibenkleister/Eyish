class CreateCollections < ActiveRecord::Migration
  def self.up
    create_table :collections do |t|
      t.string :caption
      t.date :creationDate

      t.timestamps
    end
  end

  def self.down
    drop_table :collections
  end
end
