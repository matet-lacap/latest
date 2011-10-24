class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.integer "vendor_id",                                      :null => false
      t.string  "name",             :limit => 50,                 :null => false
      t.string  "name_01",          :limit => 50
      t.integer "state_id",                                       :null => false
      t.string  "zip_code",         :limit => 10,                 :null => false
      t.string  "street_address01", :limit => 100,                :null => false
      t.string  "street_address02", :limit => 100
      t.string  "phone",            :limit => 25
      t.string  "fax",              :limit => 20
      t.string  "email_address",    :limit => 100
      t.string  "api_code",         :limit => 25
      t.boolean "is_active",                       :default => true, :null => false
      t.integer "version",                         :default => 0, :null => false
    end
  end

  def self.down
    drop_table :locations
  end
end
