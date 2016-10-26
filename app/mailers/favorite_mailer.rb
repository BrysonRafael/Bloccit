class FavoriteMailer < ApplicationMailer
  default from: "brafael808@gmail.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@toppic.example"
    headers["In-Reply-To"] = "<post/#{post.id}@toppic.example"
    headers["References"] = "<post/#{post.id}@toppic.example"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end

  def new_post(user, post)

    headers["Message-ID"] = "You have favorited your own post and will receive updates when it is commented on."

    @user = user
    @post = post

    mail(to: user.email, subject: "New post favorited.")
  end
end
