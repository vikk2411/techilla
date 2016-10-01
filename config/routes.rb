Rails.application.routes.draw do
  # devise_for :users
  root 'pages#home'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  devise_for :users, controllers: { :sessions => "users/sessions",
          :registrations => "users/registrations",
          :passwords => "users/passwords",
          :confirmations => "users/confirmations"
        },
        :path_names =>
          { :sign_in => "login", :sign_out => "logout", :sign_up => "signup" }


  resources :users , only: [:index, :show, :update]  do
    get :which_user, on: :collection
  end        
  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

# == Route Map
#
#                   Prefix Verb   URI Pattern                        Controller#Action
#                     root GET    /                                  pages#home
#         new_user_session GET    /users/login(.:format)             users/sessions#new
#             user_session POST   /users/login(.:format)             users/sessions#create
#     destroy_user_session DELETE /users/logout(.:format)            users/sessions#destroy
#            user_password POST   /users/password(.:format)          users/passwords#create
#        new_user_password GET    /users/password/new(.:format)      users/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)     users/passwords#edit
#                          PATCH  /users/password(.:format)          users/passwords#update
#                          PUT    /users/password(.:format)          users/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)            users/registrations#cancel
#        user_registration POST   /users(.:format)                   users/registrations#create
#    new_user_registration GET    /users/signup(.:format)            users/registrations#new
#   edit_user_registration GET    /users/edit(.:format)              users/registrations#edit
#                          PATCH  /users(.:format)                   users/registrations#update
#                          PUT    /users(.:format)                   users/registrations#update
#                          DELETE /users(.:format)                   users/registrations#destroy
#                     user GET    /users/:id(.:format)               users#show
#                          PATCH  /users/:id(.:format)               users#update
#                          PUT    /users/:id(.:format)               users#update
#                          GET    /auth/:provider/callback(.:format) sessions#create
#
