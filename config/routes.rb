Rails.application.routes.draw do
  # get '/contacts/' => 'contacts#index'
  # get '/contacts/all_contacts' => 'contacts#all_contacts'
  # get '/contacts/new_contacts' => 'contacts#new_contacts'
  # get '/contacts/:id/edit_contacts' => 'contacts#edit_contacts'
  # post '/contacts' => 'contacts#create'
  # get '/contacts/:id' => 'contacts#show_contacts'
  # delete '/contacts/:id' => 'contacts#destroy', as: "delete_contact"

  root 'homes#show'
  resources :contacts
  resources :users, only: [:new, :create, :show]
  resources :sessions, {only: [:new, :create, :destroy]}

  post 'contacts/search' => 'contacts#search'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


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
