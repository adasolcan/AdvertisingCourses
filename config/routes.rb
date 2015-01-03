Rails.application.routes.draw do
  resources :course_enrolments

  resources :course_sessions

  resources :courses

  resources :course_types

  get 'static_pages/home'
  root :to => 'static_pages#home'
  devise_for :users

  match 'cursuri', :to => 'courses#index', :via => :get
  match 'sesiuni_cursuri', :to => 'course_sessions#index', :via => :get
  match 'inscrieri_cursuri', :to => 'course_enrolment#index', :via => :get
  match 'tipuri_cursuri', :to => 'course_types#index', :via => :get

  match 'course_enrolments/:user_id/show_by_user_id', to: 'course_enrolments#show_by_user_id', :via => :get, action: 'show_by_user_id'
  
  
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
