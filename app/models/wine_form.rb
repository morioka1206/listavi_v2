class WineForm
  include ActiveModel::Model
  attr_accessor :grape_name, :name, :name_kana, :shop_id

  def save
    grape = Grape.create(grape_name: grape_name)
    winary = Winary.create(name: name, name_kana: name_kana)

  end
end