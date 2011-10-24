class Vendor < ActiveRecord::Base

# Scopes

  scope :activeonly, where(:is_active => true)

# Associations

  has_many :admin_roles
  #has_many :admins
  has_many :catalogs
  has_many :customer_groups
  has_many :delivery_costs
  has_many :delivery_lead_times
  has_many :news
  has_many :opening_hours
  has_many :order_headers
  has_many :order_states
  has_many :products

  has_many :service_regions

  has_many :locations

  has_many :special_offer_types
  has_many :vats


# Validations

  validates :phone, :fax, :length => { :maximum => 20 }, :numericality => true

  validates :name, :name_1, :name_2, :street_address01,  :presence => true

  validates :name, :name_1, :name_2, :street_address01,  :length => { :in => 2..50 }

  validates :street_address02, :city, :length => { :maximum => 50 }

  validates :hotline_order, :hotline_technical, :length => { :maximum => 25 }, :numericality => true

  validates :email_address, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },  :length => { :maximum => 100 }


# Rails Admin

  rails_admin do

    list do

      field :name do
        column_width 150
      end

      field :street_address01 do
        column_width  150
      end

      field :street_address02 do
        hide
      end

      field :city do
        column_width 50
      end

      field :home_specials_active do
        label 'Home Specials'
        column_width 30
      end

      field :home_pending_orders_active do
        label "Home Pending Orders"
        column_width 30
      end

      field :home_news_active do
        label "Home News"
        column_width 30
      end

      field :accept_pickup do
        column_width 30
      end

      field :accept_delivery do
        column_width 30
      end

      field :is_active do
        column_width 30
      end

    end

    edit do

      field :name
      field :name_1
      field :name_2
      field :street_address01
      field :street_address02
      field :city
      field :zip_code
      field :email_address
      field :website
      field :hotline_order
      field :hotline_technical
      field :phone
      field :fax
      field :home_specials_active
      field :home_pending_orders_active
      field :home_news_active
      field :accept_pickup
      field :accept_delivery
      field :is_active
      field :admin_roles
      field :catalogs

    end

    show do

      field :name
      field :name_1
      field :name_2
      field :street_address01
      field :street_address02
      field :city
      field :zip_code
      field :email_address
      field :website
      field :hotline_order
      field :hotline_technical
      field :phone
      field :fax
      field :home_specials_active
      field :home_pending_orders_active
      field :home_news_active
      field :accept_pickup
      field :accept_delivery
      field :is_active
      field :admin_roles
      field :catalogs

    end

  end


# Active Record Triggers
  before_save :set_version




# Model Methods


  def self.get_vendor_info(vendor_id, info)


    if !info.nil?

      case info

        when "products"

          get_vendor_product(vendor_id)

        when "catalogs"

          get_vendor_catalogs(vendor_id)

        when "locations"

          get_vendor_locations(vendor_id)

        when "specials"

          get_vendor_specials(vendor_id)

        else

          "No information available"

      end

    else

      get_vendor(vendor_id)

    end

  end




# Private Methods

  private


  def set_version
    self.version = self.version + 1
  end



  def self.get_vendor(vendor_id)

    if Vendor.activeonly.exists?(vendor_id)

       Vendor.limit(1).find(vendor_id)

    end

  end



  def self.get_vendor_product(vendor_id)

    if Vendor.activeonly.exists?(vendor_id)

      Vendor.find(vendor_id).products.activeonly

    end

  end


  def self.get_vendor_catalogs(vendor_id)

    if Vendor.activeonly.exists?(vendor_id)

      Vendor.find(vendor_id).catalogs.activeonly.to_json(:include => [:products])

    end

  end


  def self.get_vendor_locations(vendor_id)

    if Vendor.activeonly.exists?(vendor_id)

      Vendor.find(vendor_id).locations.activeonly.to_json(:include => [ :opening_hours ])

    end

  end

  def self.get_vendor_specials(vendor_id)

    if Vendor.activeonly.exists?(vendor_id)

      #Product.activeonly.where(:vendor_id => vendor_id, :is_only_special_offer => true)

      Vendor.activeonly.find(vendor_id).products.activeonly.special_offer_only

    end

  end

end
