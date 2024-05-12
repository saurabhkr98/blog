class CreateOrganizations < ActiveRecord::Migration[7.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.boolean :active
      t.integer :founding_year

      t.timestamps
    end
  end
end
