class CreateWholesalers < ActiveRecord::Migration[6.1]
  def change
    create_table :wholesalers do |t|
      t.string :name

      t.timestamps
    end
  end
end
