Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }

  # root для главной страницы root
  root 'posts#index', as: 'home'

  # для остальных страниц get
  get 'about' => 'pages#about', as: 'about'

  resources :users

  # для отслежсивания юрл адрессов create, new, update, delete и других
  resources :posts do
    resources :comments
  end

  namespace :admin do
    resources
  end

end
