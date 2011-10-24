class CreateRoleNavigations < ActiveRecord::Migration
  def self.up
    create_table :role_navigations do |t|

    t.integer "role_id",                      :null => false
    t.integer "navigation_id",                :null => false
    t.boolean "is_create"
    t.boolean "is_update"
    t.boolean "is_delete"
    t.integer "version",       :default => 0, :null => false
    end
  end

  def self.down
    drop_table :role_navigations
  end
end
