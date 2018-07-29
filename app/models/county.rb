class County < ApplicationRecord
  has_many :parks, dependent: :destroy

  validates_presence_of :title, :lat, :lng, :active
end
