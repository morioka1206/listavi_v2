class WinesController < ApplicationController
  # before_action :wine_params, only: [:show, :update, :edit, :delete]
  def index
  end

  def new
    @wine = WineForm.new
  end

  def create
    @wine = WineForm.new(wine_params)
    if @wine.save
      redirect_to new_wine_path
    else
      render :new
    end
  end

  def edit
    @wine = WineForm.new(wine_params)
  end

  def show
    @wine = WineForm .new (wine_params)
  end
  
  

  private

  def wine_params
    params.permit(:grape_name, :winary_name, :winary_name_kana, :company_name, :wine_name, :wine_name_kana, :vintage, :comment, :purchase_price,
      :selling_price, :stock, :onlist, :state, :country_id, :winary_id, :grape_id, :wine_id, :wholesaler_id, :grape_id).merge(shop_id: current_shop.id)
  end
  
  
end
