require 'rails_helper'

RSpec.describe Book, type: :model do
  it {should have_and_belong_to_many(:authors) }
  it {should belong_to(:genre) }
end
