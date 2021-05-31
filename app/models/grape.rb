# == Schema Information
#
# Table name: grapes
#
#  id         :bigint           not null, primary key
#  grape_name :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Grape < ApplicationRecord
  has_many :wines, through: :wine_grapes
  has_many :wine_grapes, dependent: :destroy

  validates :grape_name, uniqueness: true
end
