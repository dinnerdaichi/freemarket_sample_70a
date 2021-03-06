class ShippingAddressesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @shipping_address = ShippingAddress.new
  end
  
  def create
    @user = User.find(params[:user_id])
    @shipping_address = ShippingAddress.new(shipping_address_params)
    unless @shipping_address.valid?
      render :new and return
    end
    @shipping_address.save
    redirect_to  complete_user_shipping_addresses_path(@user) and return
  end

  def complete
  end

  private
  def shipping_address_params
    params.require(:shipping_address).permit(
      :family_name, 
      :first_name,
      :family_name_kana,
      :first_name_kana,
      :zip_code,
      :prefecuture,
      :city,
      :address,
      :building_name,
      :telephone_number).merge(user_id: current_user.id)
  end
end
