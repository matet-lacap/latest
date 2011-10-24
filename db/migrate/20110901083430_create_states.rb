class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
    t.string  "name",      :limit => 50,                :null => false
    t.boolean "is_active",               :default => true, :null => false
    t.integer "version",                 :default => 0, :null => false
    end
  end

  def self.down
    drop_table :states
  end
end
