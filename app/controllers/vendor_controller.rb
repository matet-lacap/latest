class VendorController < ApplicationController

#
  # All actions for this controller are temporarily for mobile app
  # usage only. This to comply to the requirements of accessing the
  # server's data using the mobile application.
  #



  #
  # Get all Active Vendors List
  #
  #

  def index

    @vendors = Vendor.activeonly.select("id, name, version")

    respond_to do |format|

      #format.json { render :json => @vendors.to_json(:include => [ { :products => :vat }, :admin_roles ]  )}
      format.json { render :json => @vendors }
      format.xml { render :xml => @vendors }

    end

  end


  #
  # Show Specific Vendor Information and Products
  #
  # @params[:id] = product_id
  #
  # @params[:sub] = Associated model
  #
  # e.g
  # /vendor/1/products
  # /vendor/1/specials
  # /vendor/1/locations
  # /vendor/1/catalogs
  #

  def show

    @query = Vendor.get_vendor_info(params[:id], params[:sub])


    respond_to do |format|

      #format.json { render :json => @query.to_json( :include => [ :variant, :add_ons ]) }

      format.json { render :json => @query }

      format.xml { render :xml => @query }

    end

  end



end
