class AddColumnToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :update_required_explanation, :string
  end
end
