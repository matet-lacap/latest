class OrderState < ActiveRecord::Base
# Scopes

# Associations

  belongs_to :vendor

  has_many :order_headers


# Validations

  validates :name, :sequence, :vendor_id, :presence => true

  validates :name, :length => { :in => 3..50 }

  validates :sequence, :numericality => { :only_integer => true }

# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end

end
