class CreateShopUsers < ActiveRecord::Migration
  def self.up
    create_table :shop_users do |t|
    t.integer "salutation_id",                               :null => false
    t.string  "first_name",    :limit => 25,                 :null => false
    t.string  "last_name",     :limit => 25,                 :null => false
    t.string  "email_address", :limit => 100,                :null => false
    t.string  "mobile_phone",  :limit => 25,                 :null => false
    t.string  "password",      :limit => 20,                 :null => false
    t.date    "birth_date"
    t.boolean "is_approved"
    t.boolean "is_active",                    :default => true, :null => false
    t.integer "version",                      :default => 0, :null => false
    end
  end

  def self.down
    drop_table :shop_users
  end
end
