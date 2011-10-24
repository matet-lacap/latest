class CreateSalutations < ActiveRecord::Migration
  def self.up
    create_table :salutations do |t|
    t.string  "name",                     :null => false
    t.boolean "is_active", :default => true, :null => false
    t.integer "version",   :default => 0, :null => false
    end
  end

  def self.down
    drop_table :salutations
  end
end
