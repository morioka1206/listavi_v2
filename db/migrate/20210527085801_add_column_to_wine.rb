class AddColumnToWine < ActiveRecord::Migration[6.1]
  def change
    add_column :wines, :state, :string
    add_column :wines, :country_id, :string
  end
end
