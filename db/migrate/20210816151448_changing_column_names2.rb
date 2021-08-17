class ChangingColumnNames2 < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :require_update, :does_require_update
    rename_column :users, :subscribe, :is_subscribed
  end
end
