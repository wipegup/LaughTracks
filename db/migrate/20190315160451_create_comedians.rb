class CreateComedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      t.text :name
      t.integer :age
      t.text :hometown
      t.text :headshot

      t.timestamps
    end
  end
end
