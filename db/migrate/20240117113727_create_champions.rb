class CreateChampions < ActiveRecord::Migration[7.1]
  def change
    create_table :champions do |t|
      t.string :name
      t.integer :difficulte
      t.integer :toxicite
      t.integer :niveau
      t.integer :attaquephysique
      t.integer :attaquemagique
      t.integer :armurephysique
      t.integer :armuremagique
      t.integer :critique
      t.boolean :main

      t.timestamps
    end
  end
end
