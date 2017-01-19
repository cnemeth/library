class Author < ApplicationRecord
  has_and_belongs_to_many :books

  scope :by_last_name, -> { Author.order(last_name: :asc) }
end
