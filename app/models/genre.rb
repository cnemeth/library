class Genre < ApplicationRecord
  has_many :books

  scope :alpha, -> { Genre.order(name: :asc) }

  validates :name, uniqueness: true
end
