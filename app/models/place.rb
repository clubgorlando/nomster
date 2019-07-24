class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  validates :name, presence: true, length: { minimum: 3, too_short: "%{count} characters is the minumum required" }
  validates :address, presence: true
  validates :description, presence: true

end
