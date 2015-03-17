class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.references :company, index: true
      t.references :department, index: true

      t.timestamps null: false
    end
    add_foreign_key :contacts, :companies
    add_foreign_key :contacts, :departments
  end
end
