class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
    t.integer "vendor_id",                                           :null => false
    t.integer "location_id"
    t.integer "catalog_id",                                          :null => false
    t.integer "vat_id",                                              :null => false
    t.string  "name",                  :limit => 50,                 :null => false
    t.string  "description_short",     :limit => 200
    t.text    "description_long"
    t.string  "image_small"
    t.string  "image_large"
    t.boolean "is_only_special_offer"
    t.boolean "is_delivery"
    t.boolean "is_pickup"
    t.boolean "is_active",                            :default => true, :null => false
    t.integer "version",                              :default => 0, :null => false
    end
  end

  def self.down
    drop_table :products
  end
end
