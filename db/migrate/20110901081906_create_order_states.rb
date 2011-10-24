class CreateOrderStates < ActiveRecord::Migration
  def self.up
    create_table :order_states do |t|
    t.integer "vendor_id",                               :null => false
    t.string  "name",       :limit => 50,                :null => false
    t.integer "sequence",                 :default => 0, :null => false
    t.boolean "is_cancel"
    t.boolean "is_final"
    t.boolean "is_regular"
    t.boolean "is_active",                :default => true, :null => false
    t.integer "version",                  :default => 0, :null => false
    end
  end

  def self.down
    drop_table :order_states
  end
end
