class CreateVariants < ActiveRecord::Migration
  def self.up
    create_table :variants do |t|

    t.integer "catalog_id"
    t.integer "product_id"
    t.integer "sort_order",                :default => 1, :null => false
    t.string  "name",        :limit => 50,                :null => false
    t.text    "description"
    t.boolean "is_active",                 :default => true, :null => false
    t.integer "version",                   :default => 0, :null => false
    end
  end

  def self.down
    drop_table :variants
  end
end
