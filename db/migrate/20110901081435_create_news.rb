class CreateNews < ActiveRecord::Migration
  def self.up
    create_table :news do |t|
      t.integer "vendor_id",                                       :null => false
      t.integer "customer_group_id",                :default => 0, :null => false
      t.string  "headline",          :limit => 100,                :null => false
      t.text    "newstext",                                        :null => false
      t.date    "date_from",                                       :null => false
      t.date    "date_until",                                      :null => false
      t.boolean "is_active",                        :default => true, :null => false
      t.integer "version",                          :default => 0, :null => false
    end
  end

  def self.down
    drop_table :news
  end
end
