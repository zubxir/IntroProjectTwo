class CreateMasteries < ActiveRecord::Migration[6.0]
  def change
    create_table :masteries do |t|
      t.string :masteryname

      t.timestamps
    end
  end
end
