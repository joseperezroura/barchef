Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "main#home"

  get "/user_profile", to: "main#user_profile"

 
end
