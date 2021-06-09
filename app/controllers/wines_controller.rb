class WinesController < ApplicationController
  require 'active_support'
  require 'active_support/core_ext'

  # before_action :wine_params, only: [:show, :update, :edit, :delete]
  include Pagy::Backend
  before_action :set_q, only: [:index, :search, :copy]

  def index
    # @q = Wine.ransack(params[:q])
    @pagy, @wines = pagy(Wine.all)
    # @pagy,@wines = @q.result(distinct: true)
  end

  def search
    @pagy, @results = pagy(@q.result)
  end

  def copy
    wine = Wine.find(params[:id])
    
    wine = wine.deep_dup
    wine.save
    redirect_to wines_index_path
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
    wine = Wine.find(params[:id])
    wine_form = WineForm.new
    
    @wine = wine_form.set_attributes(wine)
    
  end

  def show
    @wine = WineForm.new(wine_params)
  end

  def update
    
    wine = Wine.find(params[:id])
    @wine = WineForm.new(update_wine_params)
    
      if @wine.update
        redirect_to wines_index_path
        # redirect_to edit_wine_path(params[:id])
      else
        render 'edit'
      end
  end

  def destroy
    wine = Wine.find(params[:id])
    if wine.destroy!
      redirect_to wines_path
    else
      render "index"
    end
  end
  
  
  

  private

  def set_q
    @q = Wine.ransack(params[:q])
  end
  

  def wine_params
    params.permit(:grape_name, :winary_name, :winary_name_kana, :company_name, :wine_name, :wine_name_kana, :vintage, :comment, :purchase_price,:memo,
      :selling_price, :stock, :onlist, :state, :country_id, :winary_id, :grape_id, :wine_id, :wholesaler_id, :grape_id, :wine_type).merge(shop_id: current_shop.id)
  end

  def update_wine_params
    params.require(:wine_form).permit(:grape_name, :winary_name, :winary_name_kana, :company_name, :wine_name, :wine_name_kana, :vintage, :comment, :purchase_price,:memo,
      :selling_price, :stock, :onlist, :state, :country_id, :winary_id, :grape_ids, :wine_id, :wholesaler_id, :grape_id, :wine_type).merge(shop_id: current_shop.id)
  end
  
  
  

end
