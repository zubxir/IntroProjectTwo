# frozen_string_literal: true

class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :locationname

      t.timestamps
    end
  end
end
