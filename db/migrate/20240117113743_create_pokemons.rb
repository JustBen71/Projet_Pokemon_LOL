class CreatePokemons < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemons do |t|
      t.string :nom
      t.integer :pv
      t.integer :niveau
      t.string :typePokemon
      t.string :nature
      t.string :baiespreferer

      t.timestamps
    end
  end
end
