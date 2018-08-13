class County < ApplicationRecord
  has_many :parks, dependent: :destroy

  validates :title, :lat, :lng, presence: true
end
