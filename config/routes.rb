Rails.application.routes.draw do

  resources :questions do
    resources :comments
  end

  resources :questions do
    member do
      put "like", to: "questions#upvote"
      put "dislike", to: "questions#downvote"
    end
  end

  resources :comments do
    member do
      put "like", to: "comments#upvote"
      put "dislike", to: "comments#downvote"
    end
  end

  get 'password-reset' => 'users#password_reset'
  get 'password-reset-sent' => 'users#password_reset_sent'

  get "/comments" => "comments#all_index", :as => "all_index"

  root "users#index"
  get "/users/edit" => 'users#edit', :as => "edit_user"

  resources :tags, :users, :except => [:edit]

  get '/login' => 'sessions#new', :as => "login"
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', :as => "logout"


#   # Create step
#   get "/questions/new" => 'questions#new'
#   post "/questions" => 'questions#create'
#
# # Read step
#   get "/questions" => 'questions#index'
#   get "/questions/:id" => 'questions#show'
#
# # Update step
#   get "/questions/:id/edit" => 'questions#edit'
#   put "/questions/:id" => 'questions#update'
#   patch "/questions/:id" => 'questions#update'
#   post "/questions/:id" => 'questions#update'
#
# # DELETE STEP
#   delete '/questions/:id/delete' => 'questions#destroy'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
