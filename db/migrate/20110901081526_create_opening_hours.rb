class CreateOpeningHours < ActiveRecord::Migration
  def self.up
    create_table :opening_hours do |t|
    t.integer "vendor_id",                   :null => false
    t.integer "location_id"
    t.integer "weekday",      :default => 0, :null => false
    t.time    "opening_time",                :null => false
    t.boolean "is_active",    :default => true, :null => false
    t.integer "version",      :default => 0, :null => false
    end
  end

  def self.down
    drop_table :opening_hours
  end
end
