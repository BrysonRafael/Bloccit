FactoryGirl.define do
   factory :comment do
     association :post, :user
     comment = create(:comment)
     comment.new_record?
     comment.author.new_record?
     sequence(:email){ |n| "user#{n}@factory.com" }
   end
 end
