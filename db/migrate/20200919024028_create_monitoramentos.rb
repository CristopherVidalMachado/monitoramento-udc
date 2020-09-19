class CreateMonitoramentos < ActiveRecord::Migration[6.0]
  def change
    create_table :monitoramentos do |t|
      t.decimal :temperatura
      t.decimal :ph
      t.decimal :turbidez
      t.decimal :condutividade
      t.references :localidade, null: false, foreign_key: true

      t.timestamps
    end
  end
end
