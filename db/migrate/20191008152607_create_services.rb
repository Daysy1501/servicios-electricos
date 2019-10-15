class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      # t.string  :name
      t.string :descripcion_servicio
    end
  end
end
