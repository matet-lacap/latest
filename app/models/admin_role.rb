class AdminRole < ActiveRecord::Base

# Scopes

# Associations

  belongs_to :vendor


# Validations

  validates :name, :presence => true, :length => { :in => 2..50 }


# Active Record Triggers
  before_save :set_version



# Private Methods

  private


  def set_version
    self.version = self.version + 1
  end


end
