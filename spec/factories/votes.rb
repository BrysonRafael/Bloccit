FactoryGirl.define do
   factory :vote do
     association :post, :user
     vote = create(:vote)
     vote.new_record?
   end
 end
