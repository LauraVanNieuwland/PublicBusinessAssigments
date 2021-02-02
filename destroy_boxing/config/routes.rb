Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get "users/:id/products", to: "products#index"

  get '/about' => 'pages#about'
  get '/products' => 'pages#products'
  get '/contact' => 'pages#contact'
  get '/kladblok' => 'pages#kladblok'
 
  # resources for contacform
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
                              
  # resources :products, only: [:index]
  resources :users, only: [:index] do 
    resources :products
  # post "users/:id/products", to: "products#create"
  end

  resources :products, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# Rails.application.routes.draw do
#   devise_for :users
#   resources :users, only: [:show]
#   root to: 'pages#home'
#   # get "/pages/:page" => "pages#show"
#   # root "pages#show", page: "home"

#   match '/account' => 'users#account', via: :get

#   resources :jamsessions do
#     resources :requests, only: [:new, :create, :delete, :index] do
#       member do
#         put :accept
#         put :decline
#       end
#     end
#     resources :posts, only: [:index, :create, :destroy, :new]

#   end
#   resources :instruments do
#     # resources :userinstruments, only: [:index, :create, :edit, :update, :new]
#   end
#   resources :jam_session_instruments, only: [:new]
#   resources :user_instruments, only: [:new]
# end

