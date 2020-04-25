Rails.application.routes.draw do
  get "signup", :to => "users#new"
  get "login", :to => "sessions#login"
  post "logout", :to => "sessions#logout"
  post "login_attempt",:to =>"sessions#login_attempt"
  get "home", :to => "sessions#home"
  get "profile", :to => "sessions#profile"
  get "setting", :to => "sessions#setting"
  get 'welcome/index'
  post "/users", to: "users#create"
  resources :articles do
      resources :comments
  end



  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
