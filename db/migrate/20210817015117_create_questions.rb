class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :event_id
      t.integer :user_id
      t.text :subject

      t.timestamps
    end
  end
end
