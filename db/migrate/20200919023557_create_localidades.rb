class CreateLocalidades < ActiveRecord::Migration[6.0]
  def change
    create_table :localidades do |t|
      t.string :nome
      t.references :cidade, null: false, foreign_key: true
      t.decimal :lat
      t.decimal :long

      t.timestamps
    end
  end
end
