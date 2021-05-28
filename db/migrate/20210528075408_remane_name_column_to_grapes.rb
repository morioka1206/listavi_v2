class RemaneNameColumnToGrapes < ActiveRecord::Migration[6.1]
  def change
    rename_column :grapes, :name, :grape_name
  end
end
