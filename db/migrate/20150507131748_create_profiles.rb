class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :age
      t.string :university
      t.string :major
      t.integer :phone
      t.string :bio
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
