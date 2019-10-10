class Addcolums < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :name,  :string
    add_column :services, :descripcion_servicio, :string
  end
end
