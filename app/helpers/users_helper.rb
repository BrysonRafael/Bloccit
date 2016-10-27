module UsersHelper
  def posts_or_comments_for(user)
     @posts = posts.where(user_id: user.id).first
     @comments = comments.where(user_id: user.id).first

     if @posts == nil || @comments == nil
       flash[:alert] = "#{user.name} has not submitted any posts or comments yet."
     end
  end
end
