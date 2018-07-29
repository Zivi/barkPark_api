class Park < ApplicationRecord
  belongs_to :county

  validates_presence_of :name, :lat, :lng, :active, :notes, :address
end
