class CreateLocalidades < ActiveRecord::Migration[6.0]
  def change
    create_table :localidades do |t|
      t.string :nome, limit: 25
      t.references :cidade, null: false, foreign_key: true
      t.float :lat
      t.float :long
      t.timestamps
    end
  end
end
