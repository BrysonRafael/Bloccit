class Post < ActiveRecord::Base
  has_many :comments

  @posts.each do |post|  
    if index % 5 == 0
      post.title = 'SPAM'
    end
  end
end
