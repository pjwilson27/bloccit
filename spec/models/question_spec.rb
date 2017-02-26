require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(title: "New Post Title", body: "New Post Body", resolved: false) }
  
  describe "attributes" do
      it "should respond to the attributes" do
          expect(question).to respond_to(:resolved)
          expect(question).to respond_to(:title)
          expect(question).to respond_to(:body)
      end
  end
end
