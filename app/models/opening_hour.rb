class OpeningHour < ActiveRecord::Base
# Scopes

# Associations

  belongs_to :location
  belongs_to :vendor


# Validations

  validates :weekday, :opening_time, :vendor_id, :presence => true
  validates :weekday, :numericality => { :only_integer => true }


# Active Record Triggers
  before_save :set_version

# Rails Admin Ordering

  rails_admin do
    list do
      field :weekday
      field :opening_time
      field :location
      field :vendor
      field :is_active
    end

    edit do
      field :weekday
      field :opening_time
      field :location
      field :vendor
      field :is_active
    end


    show do
      field :weekday
      field :opening_time
      field :location
      field :vendor
      field :is_active
    end
  end


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end
end
