class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.decimal :importe
      t.string :concepto
      t.string :procesador

      t.timestamps null: false
    end
  end
end
