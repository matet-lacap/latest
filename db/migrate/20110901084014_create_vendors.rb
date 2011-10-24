class CreateVendors < ActiveRecord::Migration
  def self.up
    create_table :vendors do |t|
    t.string  "name",                       :limit => 50,                 :null => false
    t.string  "name_1",                     :limit => 50,                 :null => false
    t.string  "name_2",                     :limit => 50
    t.string  "street_address01",           :limit => 50,                 :null => false
    t.string  "street_address02",           :limit => 50
    t.string  "zip_code",                   :limit => 10
    t.string  "city",                       :limit => 50
    t.string  "phone",                      :limit => 20
    t.string  "fax",                        :limit => 20
    t.string  "email_address",              :limit => 100
    t.boolean "home_specials_active"
    t.boolean "home_pending_orders_active"
    t.boolean "home_news_active"
    t.boolean "accept_pickup"
    t.boolean "accept_delivery"
    t.string  "hotline_order",              :limit => 25
    t.string  "hotline_technical",          :limit => 25
    t.integer "version",                                   :default => 0, :null => false
    t.boolean "is_active",                                 :default => true, :null => false
    end
  end

  def self.down
    drop_table :vendors
  end
end
