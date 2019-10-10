class AddOtraColumn < ActiveRecord::Migration[6.0]
  def change
      add_column :citas, :date, :datetime
  end
end
