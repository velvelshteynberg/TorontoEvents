class CreateTableEventsUsers < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :events, table_name: :bookmarked_events do |t|
      t.index [:user_id, :event_id]
    end
  end
end
