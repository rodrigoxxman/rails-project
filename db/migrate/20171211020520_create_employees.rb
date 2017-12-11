class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.integer :codigo
      t.string :nombre
      t.string :apellido
      t.string :contrasena
      t.string :area

      t.timestamps
    end
  end
end
