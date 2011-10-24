class CreateVats < ActiveRecord::Migration
  def self.up
    create_table :vats do |t|
    t.integer "vendor_id",                                                                 :null => false
    t.string  "name",          :limit => 50,                                               :null => false
    t.integer "order_type_id",                                                             :null => false
    t.decimal "percentage",                  :precision => 10, :scale => 0, :default => 0, :null => false
    t.boolean "is_included"
    t.boolean "is_active",                                                  :default => true, :null => false
    t.integer "version",                                                    :default => 0, :null => false
    end
  end

  def self.down
    drop_table :vats
  end
end
