# == Schema Information
#
# Table name: wholesalers
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :wholesaler do
    name { "MyString" }
  end
end
