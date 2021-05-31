class RenameColumnWholesaler < ActiveRecord::Migration[6.1]
  def change
    rename_column :wholesalers, :name, :company_name
    rename_column :winaries, :name, :winary_name
    rename_column :winaries, :name_kana, :winary_name_kana

    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
