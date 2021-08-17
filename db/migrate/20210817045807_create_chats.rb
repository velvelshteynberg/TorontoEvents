class CreateChats < ActiveRecord::Migration[6.0]
  def change
    create_table :chats do |t|
      t.integer :event_id
      t.string :name

      t.timestamps
    end
  end
end
