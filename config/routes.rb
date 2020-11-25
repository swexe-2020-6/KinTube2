Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
    resources :images
    root 'images#index'
    get 'get_image/:id', to: 'images#get_image'
    get 'top/main'
    post 'top/login'
    root 'top#main'
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
