class AddColumnToWinesType < ActiveRecord::Migration[6.1]
  def change
    add_column :wines, :wine_type, :string, presence: true
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
