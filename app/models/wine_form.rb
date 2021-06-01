class WineForm
  include ActiveModel::Model
  attr_accessor :grape_name, :winary_name, :winary_name_kana, :company_name, :wine_name, :wine_name_kana, :vintage, :comment, :purchase_price,
  :selling_price, :stock, :onlist, :state, :country_id, :shop_id, :wine_id, :grape_id, :wholesaler_id, :winary_id

  delegate :persisted?, to: :wine

  def save
    ActiveRecord::Base.transaction do
    winary = Winary.find_or_create_by(winary_name: winary_name, winary_name_kana: winary_name_kana)
    wholesaler = Wholesaler.find_or_create_by(company_name: company_name)
    grape = Grape.find_or_create_by(grape_name: grape_name)
    wine = Wine.find_or_create_by(wine_name: wine_name, wine_name_kana: wine_name_kana, vintage: vintage, comment: comment, purchase_price: purchase_price,
    selling_price: selling_price, stock: stock, onlist: onlist, state: state, country_id: country_id, winary_id: winary.id, wholesaler_id: wholesaler.id, shop_id: shop_id)
    WineGrape.find_or_create_by(wine_id: wine.id, grape_id: grape.id)
    end
  end

  def find
    Wine.find(params[:id])
  end
  

  def to_model
    wine
  end

end