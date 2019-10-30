class CreateChampions < ActiveRecord::Migration[6.0]
  def change
    create_table :champions do |t|
      t.string :champname
      t.references :location, null: false, foreign_key: true
      t.references :mastery, null: false, foreign_key: true
      t.references :quote, null: false, foreign_key: true
      t.references :rank, null: false, foreign_key: true
      t.references :spell, null: false, foreign_key: true

      t.timestamps
    end
  end
end
