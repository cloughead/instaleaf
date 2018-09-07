class CreateDispensaries < ActiveRecord::Migration[5.1]
  def change
    create_table :dispensaries do |t|
      t.string :name
      t.string :city
      t.string :province
      t.string :country
      t.string :postal_code
      t.string :phone
      t.string :email
      t.string :website
      t.integer :kind
      t.text :description
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
