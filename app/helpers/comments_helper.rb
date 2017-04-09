module CommentsHelper
    def user_is_authorized_for_comment?(comment)
        current_user && (current_user == comment.user || current_user.admin?)
    end
    
    def user_commented
        if current_user.comments.count > 0
            #display the posts
        else
            puts "{user.name} has not commented yet."
        end
    end
end
