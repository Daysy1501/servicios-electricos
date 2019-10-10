class AddCitasCols < ActiveRecord::Migration[6.0]
  def change
    add_column :citas, :user_id, :integer
    add_column :citas, :service_id, :integer
  end
end
