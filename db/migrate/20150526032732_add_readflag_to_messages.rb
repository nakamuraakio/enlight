class AddReadflagToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :readflag, :boolean, :default => false
  end
end
