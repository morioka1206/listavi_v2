class CreateWines < ActiveRecord::Migration[6.1]
  def change
    create_table :wines do |t|
      t.string :wine_name, null: false
      t.string :wine_name_kana
      t.integer :vintage
      t.text :comment
      t.integer :purchase_price
      t.integer :selling_price
      t.integer :stock
      t.references :shop, null: false, foreign_key: true
      t.references :winary, foreign_key: true
      t.references :wholesaler, foreign_key: true
      t.boolean :onlist, default: false
      t.timestamps
    end
  end
end
