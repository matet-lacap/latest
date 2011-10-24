class CreateAdminRoles < ActiveRecord::Migration
  def self.up
    create_table :admin_roles do |t|
      t.integer :vendor_id
      t.string :name,   :limit => 50
      t.boolean :has_mobile_access
      t.boolean :has_pc_access
      t.boolean :is_active,   :default => true
      t.integer :version,   :default => 0
    end
  end

  def self.down
    drop_table :admin_roles
  end
end
