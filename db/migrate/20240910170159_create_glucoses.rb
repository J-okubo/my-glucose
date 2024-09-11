class CreateGlucoses < ActiveRecord::Migration[7.0]
  def change
    create_table :glucoses do |t|
      t.date :date,                         null: false
      t.integer :before_breakfast_glucose,  null: false
      t.integer :after_breakfast_glucose,   null: false
      t.integer :before_lunch_glucose,      null: false
      t.integer :after_lunch_glucose,       null: false
      t.integer :before_dinner_glucose,     null: false
      t.integer :after_dinner_glucose,      null: false
      t.text :remarks_section,              null: false
      t.timestamps
    end
  end
end
