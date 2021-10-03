class AddCatererIdToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :caterer_id, :integer
  end
end
