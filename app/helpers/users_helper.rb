module UsersHelper
=begin    
    def detect_post
        if user == user.posts
            flash[:alert] = "#{user.name} has a total of #{post.count} posts on Bloccit!"
        else
            flash[:alert] = "#{user.name} hasn't made any posts!!"
        end
    end
    
    def detect_comment
        if user == user.comments
            flash[:alert] = "#{user.name} has a total of #{comment.count} comments throughout Bloccit!"
        else
            flash[:alert] = "#{user.name} hasn't got much to say about people's posts..."
        end
    end
    
    user == @user
=end 
end
