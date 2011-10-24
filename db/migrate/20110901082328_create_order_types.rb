class CreateOrderTypes < ActiveRecord::Migration
  def self.up
    create_table :order_types do |t|
    t.integer "vendor_id",                                :null => false
    t.string  "name",        :limit => 50
    t.boolean "is_pickup"
    t.boolean "is_delivery"
    t.boolean "is_active",                 :default => true, :null => false
    t.integer "version",                   :default => 0, :null => false
    end
  end

  def self.down
    drop_table :order_types
  end
end
