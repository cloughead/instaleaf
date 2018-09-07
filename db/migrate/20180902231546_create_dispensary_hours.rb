class CreateDispensaryHours < ActiveRecord::Migration[5.1]
  def change
    create_table :dispensary_hours do |t|
      t.references :dispensary, foreign_key: true
      t.string :day
      t.string :open
      t.string :close

      t.timestamps
    end
  end
end
