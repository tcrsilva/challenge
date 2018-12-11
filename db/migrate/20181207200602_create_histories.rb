class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.date :today
      t.time :first_entry
      t.time :first_exist
      t.time :second_entry
      t.time :second_exist
      t.time :total
      t.text :comment

      t.timestamps
    end
  end
end
