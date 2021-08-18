class CreateHostOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :host_organizations do |t|
      t.string :name
      t.string :website
      t.string :email
      t.string :mailing_address
      t.string :phone_number
      t.text :description

      t.timestamps
    end
  end
end
