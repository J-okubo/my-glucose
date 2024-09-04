class CreateGlucoses < ActiveRecord::Migration[7.0]
  def change
    create_table :glucoses do |t|
      t.date :date,            null: false
      t.integer :time,         null: false
      t.integer :before_meal,  null: false
      t.integer :after_meal,   null: false
      t.references :user,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
