class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :class_type
      t.integer :level
      t.string :race
      t.string :alignment
      t.string :deity
      t.string :size
      t.integer :age
      t.string :gender
      t.integer :height
      t.integer :weight
      t.string :eyes
      t.string :hair
      t.string :skin
      t.text :bio

      t.timestamps
    end
  end
end
