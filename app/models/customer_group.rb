class CustomerGroup < ActiveRecord::Base

# Scopes

# Associations

  belongs_to :vendor

  has_many :delivery_costs
  has_many :product_prices

  has_many :user_customer_groups
  has_many :shop_users, :through => :user_customer_groups


# Validations

  validates :name, :presence => true


# Rails Admin Ordering

  rails_admin do

    list do
      field :name
      field :description
      field :vendor
      field :is_active
    end

    show do
      field :name
      field :description
      field :vendor
      field :is_active
    end

    edit do
      field :name
      field :description
      field :vendor
      field :is_active
    end
  end


# Active Record Triggers
  before_save :set_version



# Private Methods

  private


  def set_version
    self.version = self.version + 1
  end

end
