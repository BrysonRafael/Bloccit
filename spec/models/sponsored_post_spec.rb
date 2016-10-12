require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:title) { RandomData.random_sentence }
  let(:body) { RandomData.random_paragraph }
  let(:price) { 9 }
  let(:topic) { Topic.create!(name: name, description: description) }
  let(:post) { topic.posts.create!(title: title, body: body, price: price) }

  it { is_expected.to belong_to(:topic) }

  describe "attributes" do
    it "has title, body, and price attributes" do
      expect(SponsoredPost).to have_attributes(title: String, body: body, price: Integer)
    end
  end
end
