class Place < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 3, too_short: "%{count} characters is the minumum required" }
  validates :address, presence: true
  validates :description, presence: true
end
