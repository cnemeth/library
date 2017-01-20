require 'rails_helper'

RSpec.describe Genre, type: :model do
  it {should have_many(:books) }

  describe '#alpha' do
    let!(:genres) {
      [
        create(:genre, name: 'scifi'),
        create(:genre, name: 'romance')
      ]
    }

    it 'returns genres in alphabetical order' do
      expect(Genre.alpha.first.name).to eq 'romance'
    end
  end

  describe '@genre.books' do
    context 'with_books' do
      let!(:genre) { create(:genre_with_books) }

      it 'returns an array of books for the genre' do
        books = genre.books
        expect(books.count).to eq 3
      end
    end

    context 'without_books' do
      let!(:genre) { create(:genre) }

      it 'returns an empty array' do
        books = genre.books
        expect(books.to_a).to be_a_kind_of Array
        expect(books).to be_empty
      end
    end
  end
end
