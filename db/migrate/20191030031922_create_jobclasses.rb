class CreateJobclasses < ActiveRecord::Migration[6.0]
  def change
    create_table :jobclasses do |t|
      t.string :classname

      t.timestamps
    end
  end
end
