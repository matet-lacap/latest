class Catalog < ActiveRecord::Base

# Scopes

  scope :activeonly, where(:is_active => true)


# Associations

  belongs_to :vendor

  has_many :add_ons
  has_many :products
  has_many :variants


  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "150x150>" }



  attr_accessor :delete_image
  before_save { self.image = nil if self.delete_image == '1' }

# Validations

  validates :name, :presence => true
  validates :sort_order, :presence => true, :numericality => { :only_integer => true  }
  validates :sort_order, :length => { :maximum => 2 }
  validates :vendor_id, :presence => true


# Active Record Triggers
  before_save :set_version


# Rails Admin

  rails_admin do
    list do
      field :name
      field :sort_order
      field :image
      field :vendor
      field :is_active
    end
    show do
      field :name
      field :sort_order
      field :image
      field :vendor
      field :is_active
      field :add_ons
      field :products
      field :variants
    end
    edit do
      field :name
      field :sort_order
      field :image
      field :vendor
      field :is_active
      field :add_ons
      field :products
      field :variants
    end

  end



# Private Methods

  private


  def set_version
    self.version = self.version + 1
  end


end
