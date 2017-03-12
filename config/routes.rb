Rails.application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
  end
  
  resources :topics do
    resources :sp, except: [:index]
  end
  
  get 'about' => 'welcome#about'
  
  root 'welcome#index'

 
end
