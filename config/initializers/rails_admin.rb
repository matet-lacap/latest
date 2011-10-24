#         ooooooooo.              o8o  oooo                 .o.             .o8                     o8o
#         `888   `Y88.            `"'  `888                .888.           "888                     `"'
#          888   .d88'  .oooo.   oooo   888   .oooo.o     .8"888.      .oooo888  ooo. .oo.  .oo.   oooo  ooo. .oo.
#          888ooo88P'  `P  )88b  `888   888  d88(  "8    .8' `888.    d88' `888  `888P"Y88bP"Y88b  `888  `888P"Y88b
#          888`88b.     .oP"888   888   888  `"Y88b.    .88ooo8888.   888   888   888   888   888   888   888   888
#          888  `88b.  d8(  888   888   888  o.  )88b  .8'     `888.  888   888   888   888   888   888   888   888
#         o888o  o888o `Y888""8o o888o o888o 8""888P' o88o     o8888o `Y8bod88P" o888o o888o o888o o888o o888o o888o

# RailsAdmin config file. Generated on October 21, 2011 16:06
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

  config.current_user_method { current_user } # auto-generated
  
  # Set the admin name here (optional second array element will appear in a beautiful RailsAdmin red ©)
  config.main_app_name = ['Mobile Admin', 'Admin']
  # or for a dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

# Global Settings

  config.compact_show_view = false

# Individual Model Settings


  config.model AddOn do

    exclude_fields :id, :version

    parent Product

    edit do

      fields :order_lines do

        hide

      end

      fields :name, :description do
        column_width 400
      end

      fields :catalog, :product do
        column_width 300
      end

    end

  end

  config.model AdminRole do

    exclude_fields :id, :version

    parent User


    list do
      field :name do
        label 'Title'
         column_width 250
      end

      fields :has_mobile_access, :has_pc_access, :is_active do
        column_width  50
      end

      field :vendor do
        column_width 150
      end
    end

    edit do

      fields :name do
        column_width 400
      end

      fields :vendor do
        column_width 300
      end

    end

  end

  config.model Catalog do

    exclude_fields :id, :version

    parent Vendor

    list do
      field :image do
         thumb_method :thumb
      end
    end


    edit do

      fields :sort_order do
        column_width 50

      end

      fields :name do
        column_width 400
      end

      fields :vendor do
        column_width 300
      end

      field :image do

        thumb_method :thumb
        delete_method :delete_image

      end

    end

    show do
      field :image do
         thumb_method :thumb
      end
    end
  end

  config.model CustomerGroup do

    exclude_fields :id, :version

    parent User

    field :name do
      label "Title"
    end

    list do
      field :name do
        label 'Title'
      end
    end

    edit do

      fields :delivery_costs, :product_prices, :user_customer_groups do
        hide
      end

      fields :name, :description do
        column_width 400
      end

      fields :vendor do
        column_width 300
      end

    end

  end

  config.model DeliveryAddress do

    exclude_fields :id, :version

    navigation_label 'Delivery Management'

    weight 2

    list do
      field :shop_user_id do
        label "Shop User Id"
      end
    end

    edit do

      fields :name, :address_info, :city, :zip_code, :street_address01, :street_address02, :contact_phone do
        column_width 400
      end

      fields :state do
        column_width 300
      end

    end



  end

  config.model DeliveryCost do

    exclude_fields :id

    parent DeliveryAddress

    edit do

      fields :price do
        column_width 150
      end

      fields :vendor, :order_type, :customer_group, :service_region do
        column_width  300
      end
    end

  end

  config.model DeliveryLeadTime do

    exclude_fields :id, :version

    parent DeliveryAddress


    edit do
      fields :vendor, :location do
        column_width 300
      end
    end

  end

  config.model Location do

    exclude_fields :id, :version

    parent Vendor

    field :name_01 do
      label "Name 1"
    end

    field :street_address01 do
      label "Street Address 1"
    end

    field :street_address02 do
      label "Street Address 2"
    end



    list do

    end

    edit do

      fields :delivery_lead_times, :order_headers, :products, :product_prices do

        hide

      end

      fields :name, :name_01, :street_address01, :street_address02, :email_address do

        column_width 400

      end


      fields :phone, :fax, :api_code, :state, :vendor do
        column_width 300
      end

      fields :zip_code do
        column_width 100
      end

    end

  end

  config.model Navigation do

    exclude_fields :id, :version

    parent User

    edit do

      fields :role_navigations do
        hide
      end

      fields :name_menu, :name_header, :name_control  do
        column_width 400
      end

      fields :navigation do
        column_width 300
        label 'Parent'
      end
    end

  end

  config.model News do

    exclude_fields :id, :version

    parent Vendor

    edit do

      fields :headline, :newstext do
        column_width 400
      end

      fields :vendor, :customer_group do
        column_width 300
      end

    end

  end

  config.model OpeningHour do

    exclude_fields :id, :version

    parent Vendor

    edit do
      fields :opening_time do
        column_width 400
      end

      fields :location, :vendor do
        column_width 300
      end
    end

  end

  config.model OrderHeader do

    exclude_fields :id, :version

    navigation_label 'Orders Management'

    weight 1

    list do
      field :shop_user_id do
        label "Shop User Id"
      end
    end


    edit do
      fields :vendor, :location, :order_type, :order_state do
        column_width 300
      end
    end

  end

  config.model OrderLine do

    exclude_fields :id, :version

    parent OrderHeader

    edit do
      fields :add_on, :order_header do
        column_width 300
      end
    end

  end

  config.model OrderState do

    exclude_fields :id, :version

    parent OrderHeader

    edit do
      fields :name do
        column_width 400
      end

      fields :vendor do
        column_width 300
      end

      fields :sequence do

        column_width 50
      end
    end

  end

  config.model OrderType do

    exclude_fields :id, :version

    parent OrderHeader


    edit do
      fields :name do
        column_width 400
      end

      fields :vendor do
        column_width 300
      end
    end


  end

  config.model Product do

    exclude_fields :id, :version

    navigation_label 'Product Management'

    weight 3


    edit do

      fields :name, :catalog, :location, :vendor do
         column_width 400
      end

      fields :description_short, :description_long do
        column_width 400
      end

      field :image do
        thumb_method :thumb
        delete_method :delete_image
      end

    end

    show do
      field :image do
         thumb_method :thumb
      end

    end

  end

  config.model ProductPrice do

    exclude_fields :id

    parent Product


    edit do
      fields :special_offer_type, :location, :customer_group, :variant do
        column_width 300
      end
    end

  end

  config.model Role do

    exclude_fields :id, :version

    parent User

    field :name do
      label "Title"
    end

    list do
      field :name do
      end
    end

    edit do
      field :name do
        column_width 400
      end
    end

    show do
    end

  end

  config.model RoleNavigation do

    visible false

    exclude_fields :id, :version

    parent User

    edit do
      fields :navigation, :role do
        column_width 300
      end
    end

  end

  config.model Salutation do

    exclude_fields :id, :version

    parent User

    field :name do
      label "Title"
    end

    edit do
      fields :name do
        column_width 400
      end
    end

  end

  config.model ServiceRegion do

    visible false

    exclude_fields :id, :version

    parent Vendor

    edit do
      fields :location, :vendor do
        column_width 300
      end
    end

  end

  config.model ShopUser do

    exclude_fields :id, :version

    parent OrderHeader


    edit do

      fields :user_customer_groups do
        hide
      end

      fields :first_name, :last_name, :mobile_phone, :password do
        column_width 300
      end

      fields :email_address do
        column_width 400

      end

      fields :salutation do
        column_width 300
      end

    end

  end

  config.model SpecialOfferType do

    exclude_fields :id, :version

    parent Product

    edit do
      fields :name do
        column_width 400
      end

      fields :description do
        column_width 500
      end

      fields :vendor do
        column_width 300
      end

    end

  end

  config.model State do

    exclude_fields :id, :version

    parent User

    edit do
      field :name do
        column_width 400
      end
    end

    list do
      field :name do
        column_width 200
      end

      field :is_active do
        column_width 100
      end

    end

  end

  config.model Translation do

    exclude_fields :id, :version

    parent User

    list do
      field :shortcut do
        column_width 150
      end

      field :language_code do
        column_width 50
      end

      field :translation do
        column_width 350
      end
    end

    edit do
      fields :shortcut, :translation do
        column_width 400
      end

      fields :language_code do
        column_width 50
      end
    end

  end

  config.model User do

    navigation_label 'Administration'

    weight 5

  end

  config.model UserCustomerGroup do

      visible false

  end

  config.model Variant do

    exclude_fields :id, :version

    parent Product

    edit do

      fields :sort_order do
        column_width 50
      end

      fields :name do
        column_width 400
      end

      fields :description do
        column_width 500
      end

      fields :product, :catalog do
        column_width 300
      end

    end

  end

  config.model Vat do

    exclude_fields :id, :version

    parent Product

    edit do

      fields :delivery_costs do
        hide
      end

      fields :name do
        column_width 400
      end

      fields :order_type, :vendor do
        column_width 300
      end


    end

  end

  config.model Vendor do

    exclude_fields :id, :version

    navigation_label 'Vendor Management'

    weight 4

    field :street_address01 do
      label "Street Address 1"
    end

    field :street_address02 do
      label "Street Address 2"
    end


    edit do


      fields :customer_groups, :delivery_costs, :delivery_lead_times, :news, :opening_hours, :order_headers, :order_states, :products, :service_regions, :special_offer_types, :vats do
         hide
      end

      fields :name, :name_1, :name_2, :street_address01, :street_address02, :city, :email_address, :website do
        column_width 400
      end

      fields :phone, :fax do
        column_width 200
      end

      fields :zip_code do
        column_width 100
      end


    end

    show do

      group :admin do
        label "Administrator Roles"

        field :admin_roles do

          formatted_value do

            bindings[:view].render :partial => "show_admin_roles", :locals => {:field => bindings[:object].admin_roles}

          end
        end
      end

    end



  end


  #  ==> Authentication (before_filter)
  # This is run inside the controller instance so you can setup any authentication you need to.
  # By default, the authentication will run via warden if available.
  # and will run on the default user scope.
  # If you use devise, this will authenticate the same as authenticate_user!
  # Example Devise admin
  # RailsAdmin.config do |config|
  #   config.authenticate_with do
  #     authenticate_admin!
  #   end
  # end
  # Example Custom Warden
  # RailsAdmin.config do |config|
  #   config.authenticate_with do
  #     warden.authenticate! :scope => :paranoid
  #   end
  # end

  #  ==> Authorization
  # Use cancan https://github.com/ryanb/cancan for authorization:
  # config.authorize_with :cancan

  # Or use simple custom authorization rule:
  # config.authorize_with do
  #   redirect_to root_path unless warden.user.is_admin?
  # end

  # Use a specific role for ActiveModel's :attr_acessible :attr_protected
  # Default is :default
  # current_user is accessible in the block if you want to make it user specific.
  # config.attr_accessible_role { :default }

  #  ==> Global show view settings
  # Display empty fields in show views
  # config.compact_show_view = false

  #  ==> Global list view settings
  # Number of default rows per-page:
  # config.default_items_per_page = 50

  #  ==> Included models
  # Add all excluded models here:
  # config.excluded_models << []

  # Add models here if you want to go 'whitelist mode':
  # config.included_models << []

  # Application wide tried label methods for models' instances
  # config.label_methods << [:description] # Default is [:name, :title]

  #  ==> Global models configuration
  # config.models do
  #   # Configuration here will affect all included models in all scopes, handle with care!
  #
  #   list do
  #     # Configuration here will affect all included models in list sections (same for show, export, edit, update, create)
  #
  #     fields :name, :other_name do
  #       # Configuration here will affect all fields named [:name, :other_name], in the list section, for all included models
  #     end
  #
  #     fields_of_type :date do
  #       # Configuration here will affect all date fields, in the list section, for all included models. See README for a comprehensive type list.
  #     end
  #   end
  # end
  #
  #  ==> Model specific configuration
  # Keep in mind that *all* configuration blocks are optional.
  # RailsAdmin will try his best to provide the best defaults for each section, for each field!
  # Try to override as few things as possible, in the most generic way. Try to avoid setting labels for models and attributes, use ActiveRecord I18n API instead.
  # Less code is better code!
  # config.model MyModel do
  #   # Here goes your cross-section field configuration for ModelName.
  #   object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #   label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #   label_plural 'My models'      # Same, plural
  #   weight -1                     # Navigation priority. Bigger is higher.
  #   parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #   navigation_label              # Sets dropdown entry's name in navigation. Only for parents!
  #   # Section specific configuration:
  #   list do
  #     filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #     items_per_page 100    # Override default_items_per_page
  #     sort_by :id           # Sort column (default is primary key)
  #     sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     # Here goes the fields configuration for the list view
  #   end
  #   show do
  #     # Here goes the fields configuration for the show view
  #   end
  #   export do
  #     # Here goes the fields configuration for the export view (CSV, yaml, XML)
  #   end
  #   edit do
  #     # Here goes the fields configuration for the edit view (for create and update view)
  #   end
  #   create do
  #     # Here goes the fields configuration for the create view, overriding edit section settings
  #   end
  #   update do
  #     # Here goes the fields configuration for the update view, overriding edit section settings
  #   end
  # end

# fields configuration is described in the Readme, if you have other question, ask us on the mailing-list!

#  ==> Your models configuration, to help you get started!

end

# You made it this far? You're looking for something that doesn't exist! Add it to RailsAdmin and send us a Pull Request!
