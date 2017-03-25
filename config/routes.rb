Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end
  
  resources :users, only: [:new, :create, :show]
  
  resources :sessions, only: [:new, :create, :destroy]
  
  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]
    post '/up-vote' => 'votes#up_vote', as: :up_vote
    post '/down-vote' => 'votes#down_vote', as: :down_vote
#    resources :votes, only: [] do
#      collection do
#        post :up_vote
#        post :down_vote
#      end
#    end
  end
  
 # post '/up-vote' => 'votes#up_vote', as: :up_vote
#  post '/down-vote' => 'votes#down_vote', as: :down_vote
  
  get 'about' => 'welcome#about'
  
  root 'welcome#index'

 
end
