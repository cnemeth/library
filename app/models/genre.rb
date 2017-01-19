class Genre < ApplicationRecord
  has_many :books

  scope :alpha, -> { Genre.order(name: :asc) }
end
