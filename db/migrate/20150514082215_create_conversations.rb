class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :user_id
      t.integer :firmuser_id
      t.string :name

      t.timestamps null: false
    end
  end
end
