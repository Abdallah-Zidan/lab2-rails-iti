Rails.application.routes.draw do
  get 'sessions/login,'
  get 'sessions/home,'
  get 'sessions/profile,'
  get 'sessions/setting'
  get 'users/new'
  get 'welcome/index'
  post "/users", to: "users#create"
  resources :articles do
      resources :comments
  end



  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
