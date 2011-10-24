class CreateCustomerGroups < ActiveRecord::Migration
  def self.up
    create_table :customer_groups do |t|
      t.integer "vendor_id"
      t.string  "name",        :limit => 50,                :null => false
      t.text    "description"
      t.boolean "is_active",                 :default => true, :null => false
      t.integer "version",                   :default => 0, :null => false
    end
  end

  def self.down
    drop_table :customer_groups
  end
end
