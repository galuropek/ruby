Rails.application.routes.draw do

  devise_for :users
  # root для главной страницы root
  root 'home#index', as: 'home'

  # для остальных страниц get
  get 'about' => 'pages#about', as: 'about'

  # для отслежсивания юрл адрессов create, new, update, delete и других
  resources :posts do
    resources :comments
  end

end
