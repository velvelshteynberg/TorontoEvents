class AddDateStampToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :update_required_timestamp, :datetime
  end
end
