class RemoveImagesInProduct < ActiveRecord::Migration
  def self.up

    remove_column :products, :image_large
    remove_column :products, :image_small
    remove_column :products, :photo_content_type
    remove_column :products, :photo_file_name
    remove_column :products, :photo_file_size
    remove_column :products, :photo_updated_at

  end

  def self.down

    add_column :products, :image_large, :string
    add_column :products, :image_small, :string
    add_column :products, :photo_content_type, :string
    add_column :products, :photo_file_name, :string
    add_column :products, :photo_file_size, :integer
    add_column :products, :photo_updated_at, :datetime

  end
end
