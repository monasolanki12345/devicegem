Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users
  # get 'welcome/index'
  # get 'static_pages/landing_page'
  # get 'static_pages/dashboard'
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  

end
