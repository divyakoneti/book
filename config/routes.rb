Rails.application.routes.draw do
  get 'articles/new'

  get 'articles/create'

  get 'booking/index'

  get 'books/index'
  resources :books
  resources :stores, only: 'create'
  resources :articles
  resources :forms
  get 'site/index'
  get 'stores/simple_form'
  get 'basics/index'
  get 'stores/theater'
  get 'stores/new'
  get 'stores/login'
  get 'stores/create'
  get 'stores/check'
  post 'stores/check'
  get 'stores/index'
  get 'stores/store'
  get 'stores/theater_store'
  post 'stores/theater_store'
  get 'stores/movie'
  get 'stores/movie_store'
  post 'stores/movie_store'
  get 'stores/movie_theaters'
  get 'stores/movie_theater_store'
  get 'stores/movie_theaters'
  post 'stores/movie_theater_store'
  get 'stores/movie_theater_store'
  get 'stores/theater'
  get 'stores/movie'
  get 'basics/new'
  post 'forms/new'
  
  
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
