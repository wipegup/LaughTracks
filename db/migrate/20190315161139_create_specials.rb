class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.text :title
      t.integer :runtime
      t.text :thumbnail
      t.integer :comedian_id

      t.timestamps
    end
  end
end
