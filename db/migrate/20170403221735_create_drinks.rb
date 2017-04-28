class CreateDrinks < ActiveRecord::Migration[5.0]
  def change
    create_table :drinks do |t|
      t.string :blend_name
      t.string :origin
      t.string :variety
      t.text :notes

      t.timestamps
    end
  end
end
