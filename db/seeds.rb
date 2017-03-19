require 'random_data'
#create users
5.times do
    User.create!(
        name: RandomData.random_name,
        email: RandomData.random_email,
        password: RandomData.random_sentence
        )
    end
    users = User.all

#Create Topics
15.times do
    Topic.create!(
        name: RandomData.random_sentence,
        description: RandomData.random_paragraph
    )
end
topics = Topic.all

#Create Posts
50.times do
    #1
    Post.create!(
        user: users.sample,
        topic: topics.sample,
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
        )
end
posts = Post.all

#create comments
100.times do
    Comment.create!(
        #4
        post: posts.sample,
        body: RandomData.random_paragraph
        )
    end
    
user = User.first
user.update_attributes!(
    email: 'bloccit.com',
    password: 'helloworld'
)    
    
puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
    