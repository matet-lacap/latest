class ProductController < ApplicationController


  #
  # All actions for this controller are temporarily for mobile app
  # usage only. This to comply to the requirements of accessing the
  # server's data using the mobile application.
  #



  #
  # Get All Active Product List
  #

   def index

     products = Product.activeonly.all

     respond_to do |format|

       format.json { render :json => products }

       format.xml { render :xml => products }

     end

   end



  #
  # Show Specific Product Information and Products
  #
  # @params[:id] = product_id
  #
  # @params[:sub] = Associated model
  #


  def show

    @query = Product.get_product_info(params[:id], params[:sub])

    respond_to do |format|

      format.json { render :json => @query }
      format.xml { render :xml => @query }

    end

  end



end
