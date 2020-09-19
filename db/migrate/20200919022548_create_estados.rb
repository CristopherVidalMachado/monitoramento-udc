class CreateEstados < ActiveRecord::Migration[6.0]
  def change
    create_table :estados do |t|
      t.string :uf , limit: 2
      t.string :nome, limit: 25

      t.timestamps
    end
  end
end
