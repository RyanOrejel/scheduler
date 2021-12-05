class Calendar < ApplicationRecord
  has_many :notes, dependent: :destroy
  has_many :participants, dependent: :destroy
  has_many :tasks

  validates :day, presence: true
end
