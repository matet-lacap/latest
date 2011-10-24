class Salutation < ActiveRecord::Base

# Scopes

# Associations

  has_many :shop_users


# Validations

  validates :name, :presence => true, :length => { :in => 3..255 }

# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end

end
