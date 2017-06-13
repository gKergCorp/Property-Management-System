class Train < ApplicationRecord
  has_many :timetables
  has_many :stations, through: :timetables

  validates :name, presence: true
  validates :number, presence: true, uniqueness: true
  validates :wagon_count, numericality: { greater_than_or_equal_to: 2, less_than_or_equal_to: 50 }
end
