class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :nombres
      t.string :apellidos
      t.string :direccion
      t.date :fch_ncto

      t.timestamps
    end
  end
end
