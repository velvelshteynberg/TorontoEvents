class AddCheckboxToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :checkbox, :boolean, :default => false
  end
end
