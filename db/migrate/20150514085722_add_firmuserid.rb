class AddFirmuserid < ActiveRecord::Migration
  def change
  	add_column :firms, :firmuser_id, :integer
  end
end
