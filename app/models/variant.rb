class Variant < ActiveRecord::Base
# Scopes

# Associations

  belongs_to :product
  belongs_to :catalog

  #has_many :order_lines
  has_many :product_prices


# Validations

  validates :sort_order, :presence => true, :numericality => { :only_int => true}
  validates :name, :presence => true, :length => { :in => 3..50 }

# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end

end
