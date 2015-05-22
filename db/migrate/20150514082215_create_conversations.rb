class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :user_id
      t.integer :firmuser_id
      t.string :name

      t.timestamps null: false
    end

    add_index :conversations, :user_id
    add_index :conversations, :firmuser_id
  end
end
