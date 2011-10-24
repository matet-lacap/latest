class CreateUserCustomerGroups < ActiveRecord::Migration
  def self.up
    create_table :user_customer_groups do |t|
    t.integer "shop_user_id",           :null => false
    t.integer "customer_group_id", :null => false
    end
  end

  def self.down
    drop_table :user_customer_groups
  end
end
