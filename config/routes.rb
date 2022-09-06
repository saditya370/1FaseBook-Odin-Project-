Rails.application.routes.draw do
  
  resources :user
  resources :posts do 

    resources :comments

  end
  resources :invitations
  resources :likes , only: [:create,:destroy]
  
  patch "accept",to: "invitations#accept"
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end
