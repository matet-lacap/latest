class CreateDeliveryAddresses < ActiveRecord::Migration
  def self.up
    create_table :delivery_addresses do |t|
      t.integer "shop_user_id",                                        :null => false
      t.boolean "is_invoice",                      :default => false, :null => false
      t.string  "name",             :limit => 50,                 :null => false
      t.text  "address_info"
      t.integer "state_id",                                       :null => false
      t.string  "city",             :limit => 50,                 :null => false
      t.string  "zip_code",         :limit => 50,                 :null => false
      t.string  "street_address01", :limit => 50,                 :null => false
      t.string  "street_address02", :limit => 50
      t.string  "contact_phone",    :limit => 50
      t.integer "version",                         :default => 0, :null => false
    end
  end

  def self.down
    drop_table :delivery_addresses
  end
end
