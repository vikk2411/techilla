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


  resources :users , only: [:show, :update]  do
  
  end        

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
