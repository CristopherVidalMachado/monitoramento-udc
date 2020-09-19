class CreateCidades < ActiveRecord::Migration[6.0]
  def change
    create_table :cidades do |t|
      t.string :nome, limit: 100
      t.references :estado, null: false, foreign_key: true

      t.timestamps
    end
  end
end
