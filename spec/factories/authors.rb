FactoryGirl.define do
  factory :author do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name

    factory :author_with_books do
      transient do
        books_count 3
      end

      after(:create) do |author, evaluator|
        create_list(:book, evaluator.books_count, authors: [author])
      end
    end
  end
end
