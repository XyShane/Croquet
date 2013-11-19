CroquetWeb::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :programmes

 root :to => "croquet_core#index"

  match '/about', to: 'croquet_core#about', via: 'get'

  match '/how_to_get_there', to: 'croquet_core#how_to_get_there', via: 'get'

  match "/join", to: 'croquet_core#join', via: 'get'

  match "/requirement", to: 'croquet_core#requirement' , via: 'get'

  match "/newsletters", to: 'croquet_core#newsletters' , via: 'get'

  match "/club_matters", to: 'croquet_core#club_matters' , via: 'get'

  match "/bookings", to: 'croquet_core#bookings' , via: 'get'

  match "/links", to: 'croquet_core#links' , via: 'get'

  match "/programme", to: 'croquet_core#programme' , via: 'get'
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
