class UserCustomerGroup < ActiveRecord::Base
# Scopes

  # Associations

  belongs_to :customer_group , :class_name => "CustomerGroup"
  belongs_to :shop_user, :class_name =>  "ShopUser"



  # Validations

  # Active Record Triggers

  # Private Methods

end
