# == Schema Information
#
# Table name: wines
#
#  id             :bigint           not null, primary key
#  comment        :text(65535)
#  memo           :text(65535)
#  onlist         :boolean          default(FALSE)
#  purchase_price :integer
#  selling_price  :integer
#  state          :string(255)
#  stock          :integer
#  vintage        :integer
#  wine_name      :string(255)      not null
#  wine_name_kana :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  country_id     :integer
#  shop_id        :bigint           not null
#  wholesaler_id  :bigint
#  winary_id      :bigint           not null
#
# Indexes
#
#  index_wines_on_shop_id        (shop_id)
#  index_wines_on_wholesaler_id  (wholesaler_id)
#  index_wines_on_winary_id      (winary_id)
#
# Foreign Keys
#
#  fk_rails_...  (shop_id => shops.id)
#  fk_rails_...  (wholesaler_id => wholesalers.id)
#  fk_rails_...  (winary_id => winaries.id)
#
class Wine < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :shop
  belongs_to :wholesaler
  belongs_to :winary
  belongs_to :country
  has_many :wine_grapes, dependent: :destroy
  has_many :grapes, through: :wine_grapes
end
