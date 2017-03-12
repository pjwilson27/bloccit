require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:title) { RandomData.random_sentence }
  let(:body) { RandomData.random_paragraph }
  let(:price) { 10 }
  let(:sp) {SponsoredPost.create!(title: title, body: body, price: price)}
  
  describe "attributes" do
      it "has a title" do
          expect(sp).to respond_to(:title)
      end
      it "has a body" do
          expect(sp).to respond_to(:body)
      end
      it "has a price" do
          expect(sp).to respond_to(:price)
      end
  end
end
