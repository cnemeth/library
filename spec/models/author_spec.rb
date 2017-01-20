require 'rails_helper'

RSpec.describe Author, type: :model do
  it {should have_and_belong_to_many(:books) }

  describe '#by_last_name' do
    let!(:authors) {
      [
        create(:author, first_name: 'Sandi', last_name: 'Metz'),
        create(:author, first_name: 'Dave', last_name: 'Thomas'),
        create(:author, first_name: 'Andy', last_name: 'Hunt')
      ]
    }

    it 'returns @authors ordered by last name' do
      expect(Author.by_last_name.first.last_name).to eq 'Hunt'
      expect(Author.by_last_name.last.last_name).to eq 'Thomas'
    end
  end

  describe '@author.books' do
    context 'author with books' do
      let!(:author) { create(:author_with_books) }

      it 'returns all books for the author' do
        books = author.books
        expect(books.count).to eq 3
      end
    end

    context 'author without books' do
      let!(:author) { create(:author) }

      it 'returns an empty array' do
        books = author.books
        expect(books.to_a).to be_a_kind_of Array
        expect(books).to be_empty
      end
    end
  end
end
