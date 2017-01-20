class RemoveBooksFromGenres < ActiveRecord::Migration[5.0]
  def change
    remove_column :genres, :books, :string
  end
end
