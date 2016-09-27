class Post < ActiveRecord::Base
  has_many :comments

  posts.each do |post|
    post = post[i]
      if post % 5 == 0
        post.title = 'SPAM'
      end
    end
  end

end
