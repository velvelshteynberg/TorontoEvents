class ChangeDefaultValuesInEventsColumns < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :is_approved, :boolean, :default => false
    change_column :events, :does_require_update, :boolean, :default => false
  end
end
