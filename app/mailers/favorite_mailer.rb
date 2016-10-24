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
end
