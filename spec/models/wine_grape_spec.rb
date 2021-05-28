# == Schema Information
#
# Table name: wine_grapes
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  grape_id   :bigint
#  wine_id    :bigint
#
# Indexes
#
#  index_wine_grapes_on_grape_id  (grape_id)
#  index_wine_grapes_on_wine_id   (wine_id)
#
# Foreign Keys
#
#  fk_rails_...  (grape_id => grapes.id)
#  fk_rails_...  (wine_id => wines.id)
#
require 'rails_helper'

RSpec.describe WineGrape, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
