require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:title) { RandomData.random_sentence }
  let(:body) { RandomData.random_paragraph }
  let(:price) { rand(9) }
  let(:topic) { Topic.create!(name: name, description: description) }
  let(:post) { topic.posts.create!(title: title, body: body, price: price) }

  it { is_expected.to belong_to(:topic) }

  describe "attributes" do
    it "has title and body attributes" do
      expect(SponsoredPost).to have_attributes(title: title, body: body, price: price)
    end
  end
end
