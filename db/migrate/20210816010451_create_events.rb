class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :host_organization_id
      t.integer :user_id
      t.string :name
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.text :address
      t.text :description
      t.boolean :approved
      t.boolean :require_update

      t.timestamps
    end
  end
end
