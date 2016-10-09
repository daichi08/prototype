Rails.application.routes.draw do
  
  get 'selects/new'

  get 'selects/create'

  get 'select/new'

  get 'select/create'

  get 'questions/create'

  get 'prize_gachas/index'

  get 'prize_gachas/show'

  get 'prize_gachas/new'
  post 'prize_gachas/new' => 'prize_gachas#show'

  get 'prize_gachas/update'

  get 'point_gachas/index'

  get 'point_gachas/show'

  get 'point_gachas/new'
  post 'point_gachas/new' => 'point_gachas#show'

  get 'point_gachas/update'

  get 'questions/show/:id' => 'questions#show'
  post 'questions/show' => 'questions#index'
  
  get 'pages/index'

  get 'pages/help'

  get 'questions/index'

  get 'questions/show'

  get 'questions/edit'

  get 'questions/new'
  post 'questions/new' => 'questions#create'

  get 'admins/index'

  get 'admins/show'

  devise_for :admins
  
  get 'users/index'

  get 'users/show'

  devise_for :users
  
  get 'pages/index'
  
  root 'pages#index'

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
