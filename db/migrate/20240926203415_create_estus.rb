class CreateEstus < ActiveRecord::Migration[7.2]
  def change
    create_table :estus do |t|
      t.string :nombre
      t.string :apellido
      t.string :carnet
      t.string :carrera

      t.timestamps
    end
  end
end
