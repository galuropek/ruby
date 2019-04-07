Rails.application.routes.draw do

  # root для главной страницы root
  root 'posts#index', as: 'home'

  # для остальных страниц get
  get 'about' => 'pages#about', as: 'about'

  # для отслежсивания юрл адрессов create, new, update, delete и других
  resources :posts do
    resources :comments
  end

end
