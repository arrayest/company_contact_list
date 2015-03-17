class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.references :company, index: true
      t.integer :parent_id

      t.timestamps null: false
    end
    add_foreign_key :departments, :companies
  end
end
