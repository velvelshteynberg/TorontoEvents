class ChangingColumnNames < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :approved, :is_approved
  end
end
