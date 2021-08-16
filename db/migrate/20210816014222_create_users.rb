class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :phone
      t.string :password
      t.boolean :subscribe
      t.boolean :admin

      t.timestamps
    end
  end
end
