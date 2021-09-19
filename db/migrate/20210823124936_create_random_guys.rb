class CreateRandomGuys < ActiveRecord::Migration[6.0]
  def change
    create_table :random_guys do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
