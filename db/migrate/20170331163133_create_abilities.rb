class CreateAbilities < ActiveRecord::Migration[5.0]
  def change
    create_table :abilities do |t|
      t.integer :str
      t.integer :str_mod
      t.integer :dex
      t.integer :dex_mod
      t.integer :con
      t.integer :con_mod
      t.integer :int
      t.integer :int_mod
      t.integer :wis
      t.integer :wis_mod
      t.integer :cha
      t.integer :cha_mod
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
