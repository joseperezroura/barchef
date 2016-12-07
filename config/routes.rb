Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "main#home"


  
 resources :recipes 

 resources :users 

 post '/follow/:id', to: 'users#follow'
 post '/unfollow/:id', to: 'users#unfollow'
end
