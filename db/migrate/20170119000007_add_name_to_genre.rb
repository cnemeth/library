class AddNameToGenre < ActiveRecord::Migration[5.0]
  def change
    add_column :genres, :name, :string
  end
end
