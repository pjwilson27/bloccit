module PostsHelper
    def user_is_authorized_for_post?(post)
        current_user && (current_user == post.user || current_user.admin?)
    end
    
    def user_posted
        if current_user.posts.count > 0
            #display user posts
        else
            puts "{user.name} has not submitted any posts yet."
        end
    end
end
