class AddImageToCatalog < ActiveRecord::Migration
def self.up
    add_column :catalogs, :image_file_name, :string # Original filename
    add_column :catalogs, :image_content_type, :string # Mime type
    add_column :catalogs, :image_file_size, :integer # File size in bytes
    add_column :catalogs, :image_updated_at,   :datetime
    remove_column :catalogs, :image
  end

  def self.down
    remove_column :catalogs, :image_file_name
    remove_column :catalogs, :image_content_type
    remove_column :catalogs, :image_file_size
    remove_column :catalogs, :image_updated_at
    add_column :catalogs, :image, :string
  end
end
