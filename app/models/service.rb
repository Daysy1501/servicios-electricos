class Service <ApplicationRecord
  has_one_attached :picture
  has_many :citas
  has_many :users, through: :citas


end
