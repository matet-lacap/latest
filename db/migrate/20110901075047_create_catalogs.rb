class CreateCatalogs < ActiveRecord::Migration
  def self.up
    create_table :catalogs do |t|
      t.integer "vendor_id",                                :null => false
      t.integer "sort_order",                :default => 0, :null => false
      t.string  "name",        :limit => 50,                :null => false
      t.string  "image"
      t.boolean "is_active",                 :default => true, :null => false
      t.integer "version",                   :default => 0, :null => false
    end
  end

  def self.down
    drop_table :catalogs
  end
end
