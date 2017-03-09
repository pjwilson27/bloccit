require 'random_data'

#Create Posts
50.times do
    #1
    Post.create!(
        #2
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
        )
end
posts = Post.all

#create comments
#3
100.times do
    Comment.create!(
        #4
        post: posts.sample,
        body: RandomData.random_paragraph
        )
    end
finding_post = Post.find_or_create_by(title: "Hoping this works", body: "Huzzahs!")
Comment.find_or_create_by(body: "Your post sucks. Get better", post: finding_post)
    
puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
    