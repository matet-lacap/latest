class CreateDeliveryCosts < ActiveRecord::Migration
  def self.up
    create_table :delivery_costs do |t|
      t.integer "vendor_id",                                                       :null => false
      t.integer "order_type_id",                                                   :null => false
      t.integer "customer_group_id"
      t.integer "service_region_id"
      t.decimal "price",             :precision => 10, :scale => 0,                :null => false
      t.integer "vat_id",                                                          :null => false
      t.boolean "is_active",                                        :default => true, :null => false
    end
  end

  def self.down
    drop_table :delivery_costs
  end
end
