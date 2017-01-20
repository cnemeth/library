FactoryGirl.define do
  factory :genre do
    sequence :name do |n|
      "#{Faker::Lorem.word}#{n}"
    end

    factory :genre_with_books do
      transient do
        books_count 3
      end

      after(:create) do |genre, evaluator|
        create_list(:book, evaluator.books_count, genre: genre)
      end
    end
  end
end
