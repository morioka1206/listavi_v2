class CreateWineGrapes < ActiveRecord::Migration[6.1]
  def change
    create_table :wine_grapes do |t|
      t.references :wine, foreign_key: true
      t.references :grape, foreign_key: true
      t.timestamps
    end
  end
end
