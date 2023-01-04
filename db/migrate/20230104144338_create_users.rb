class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.integer :phone_number
      t.string :email
      t.string :type, null: false            

      t.timestamps
    end
  end
end
