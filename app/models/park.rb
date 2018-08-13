class Park < ApplicationRecord
  belongs_to :county

  validates :name, :lat, :lng, :address, presence: true
end
