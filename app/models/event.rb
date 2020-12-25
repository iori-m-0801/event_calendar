class Event < ApplicationRecord
  validates :name, presence: true
  validates :year, presence: true
  validates :month, presence: true
  validates :day, presence: true
  validates :start_hour, presence: true
  validates :start_minute, presence: true
  validates :cast, presence: true
  validates :place, presence: true
  validates :price_today, presence: true
end
