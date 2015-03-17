class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.references :contact, index: true
      t.string :phone_number

      t.timestamps null: false
    end
    add_foreign_key :phones, :contacts
  end
end
