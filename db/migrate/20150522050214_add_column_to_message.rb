class AddColumnToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :creater_flag, :boolean
  end
end
