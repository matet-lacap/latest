class CreateNavigations < ActiveRecord::Migration
  def self.up
    create_table :navigations do |t|
      t.integer "parent_id"
      t.boolean "is_pane"
      t.integer "pane_id",                    :default => 1,   :null => false
      t.integer "width",                      :default => 800, :null => false
      t.integer "height",                     :default => 600, :null => false
      t.integer "pos_x",                      :default => 0,   :null => false
      t.integer "pos_y",                      :default => 0,   :null => false
      t.boolean "is_multi"
      t.string  "name_menu",    :limit => 50,                  :null => false
      t.string  "name_header",  :limit => 50,                  :null => false
      t.string  "name_control",                                :null => false
      t.boolean "is_active",                  :default => true,   :null => false
      t.integer "version",                    :default => 0,   :null => false
    end
  end

  def self.down
    drop_table :navigations
  end
end
