require 'random_data'
# Create Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "#{Post.count}"

asparagus_post = Post.find_or_create_by(title: "Asparagus", body:  "Asparagus makes your urine smell funny.")

puts "#{Post.count}"
puts "#{Comment.count}"

asparagus_comment = Comment.find_or_create_by(body:  "You should try eating beets sometime!", post: asparagus_post)

puts "#{Comment.count}"

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
