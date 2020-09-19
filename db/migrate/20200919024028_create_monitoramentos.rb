class CreateMonitoramentos < ActiveRecord::Migration[6.0]
  def change
    create_table :monitoramentos do |t|
      t.decimal :temperatura , :precision => 10, :scale => 2
      t.decimal :ph, :precision => 10, :scale => 2
      t.decimal :turbidez, :precision => 10, :scale => 2
      t.decimal :condutividade, :precision => 10, :scale => 2
      t.references :localidade, null: false, foreign_key: true

      t.timestamps
    end
  end
end
