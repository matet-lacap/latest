class CreateTranslations < ActiveRecord::Migration
  def self.up
    create_table :translations do |t|
    t.string  "shortcut",      :limit => 100,                :null => false
    t.string  "language_code", :limit => 2,                  :null => false
    t.text    "translation",                                 :null => false
    t.integer "version",                      :default => 0, :null => false
    end
  end

  def self.down
    drop_table :translations
  end
end
