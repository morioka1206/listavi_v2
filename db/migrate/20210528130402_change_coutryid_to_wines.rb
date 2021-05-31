class ChangeCoutryidToWines < ActiveRecord::Migration[6.1]
  def up
    # text型からstring型へ変更
    change_column :wines, :country_id, :integer
end

def down
    # string型からtext型へ戻す
    change_column :wines, :country_id, :string
end
end
