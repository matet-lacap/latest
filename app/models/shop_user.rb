class ShopUser < ActiveRecord::Base
# Scopes

# Associations

  belongs_to :salutation

  has_many :user_customer_groups
  has_many :customer_groups, :through => :user_customer_groups


# Validations

  validates :first_name, :last_name, :email_address, :mobile_phone, :salutation_id, :presence => true
  validates :first_name, :last_name, :length => { :in => 2..25 }
  validates :email_address, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },   :length => { :maximum => 100 }, :uniqueness => true
  validates :mobile_phone, :numericality => true
  validates :password, :length => { :in => 6..32 }

# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end

end
