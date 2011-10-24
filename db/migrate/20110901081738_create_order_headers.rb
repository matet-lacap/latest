class CreateOrderHeaders < ActiveRecord::Migration
  def self.up
    create_table :order_headers do |t|
    t.integer  "vendor_id",                                                     :null => false
    t.integer  "location_id"
    t.integer  "shop_user_id",                                                       :null => false
    t.integer  "order_type_id",                                                 :null => false
    t.integer  "order_state_id",                                                :null => false
    t.datetime "order_datetime",                                                :null => false
    t.time     "time_requested"
    t.time     "time_done"
    t.decimal  "total_items",     :precision => 10, :scale => 0
    t.decimal  "deliver_cost",    :precision => 10, :scale => 0
    t.decimal  "vat_included",    :precision => 10, :scale => 0
    t.decimal  "order_total",     :precision => 10, :scale => 0
    t.integer  "admin_received"
    t.integer  "admin_prepared"
    t.integer  "admin_delivered"
    t.integer  "version",                                        :default => 0, :null => false
    end
  end

  def self.down
    drop_table :order_headers
  end
end
