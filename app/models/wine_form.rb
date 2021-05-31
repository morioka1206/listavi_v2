class WineForm
  include ActiveModel::Model
  attr_accessor :grape_name, :winary_name, :winary_name_kana, :company_name, :wine_name, :wine_name_kana, :vintage, :comment, :purchase_price,
  :selling_price, :stock, :onlist, :state, :country_id, :shop_id, :wine_id, :grape_id, :wholesaler_id, :winary_id

  def save
    
    winary = Winary.find_or_create_by(winary_name: winary_name, winary_name_kana: winary_name_kana)
    wholesaler = Wholesaler.find_or_create_by(company_name: company_name)
    grape = Grape.find_or_create_by(grape_name: grape_name)
    wine = Wine.create(wine_name: wine_name, wine_name_kana: wine_name_kana, vintage: vintage, comment: comment, purchase_price: purchase_price,
    selling_price: selling_price, stock: stock, onlist: onlist, state: state, country_id: country_id, winary_id: winary_id, wholesaler_id: wholesaler_id, shop_id: shop_id)
end