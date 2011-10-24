class Location < ActiveRecord::Base
# Scopes

  scope :activeonly, where(:is_active => true)


# Associations

  belongs_to :state
  belongs_to :vendor

  #has_many :admins
  has_many :delivery_lead_times
  has_many :opening_hours
  has_many :order_headers
  has_many :product_prices
  has_many :products
  has_many :service_regions


# Validations

  validates :vendor_id, :name, :state_id, :zip_code, :street_address01 , :presence => true
  validates :vendor_id, :numericality => { :only_integer => true }

  validates :email_address, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },   :length => { :maximum => 100 }


# Active Record Triggers
  before_save :set_version


# Rails Admin

  rails_admin do

    list do
      field :name  do
        column_width 110
      end
      field :street_address01 do
        column_width 150
      end

      field :state do
        column_width 80
      end
      field :vendor do
        column_width 100
      end
      field :api_code do
        column_width 100
      end

      field :is_active do
        column_width 30
      end

    end

    edit do
      field :name
      field :name_01
      field :street_address01
      field :street_address02
      field :email_address
      field :phone
      field :fax
      field :zip_code
      field :state
      field :vendor
      field :is_active
      field :api_code
      field :opening_hours
      field :service_regions
    end

    show do
      field :name
      field :name_01
      field :street_address01
      field :street_address02
      field :email_address
      field :phone
      field :fax
      field :zip_code
      field :state
      field :vendor
      field :is_active
      field :api_code
      field :opening_hours
      field :service_regions
    end
  end



# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end

end
