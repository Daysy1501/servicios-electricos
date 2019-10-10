class Cita < ApplicationRecord
  self.table_name = "citas"
  belongs_to :user
  belongs_to :service
end
