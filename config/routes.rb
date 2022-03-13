Rails.application.routes.draw do
  devise_for :users
  get root to:'homes#top'
  get "homes/about"=>"homes#about",as: "about"
  resources :users,only:[:show,:edit,:update]
  resources :post_images,only:[:new,:index,:show,:create,:destroy]do
    resources :post_comments,only:[:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
