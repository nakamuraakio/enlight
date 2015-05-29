class AddFirmuserReadflagToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :firmuser_readflag, :boolean, :default => false
  end
end
