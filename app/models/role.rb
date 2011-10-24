class Role < ActiveRecord::Base
# Scopes

# Associations

#has_many :admin
  has_many :role_navigations


# Validations

  validates :name, :presence => true, :length => { :in => 3..50 }

# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end

end
