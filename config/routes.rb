YoungEmpowered::Application.routes.draw do
resources :inquiries, :only => [:new, :create] do
    get 'thank_you', :on => :collection
  end
match '/new', to: 'inquiries#new', via: 'get'


  root'young_empowered#home'   #get "young_empowered/home" 
  match '/activitiesandvolunteer', to: 'young_empowered#activitiesandvolunteer', via: 'get'  #get "young_empowered/Activities_and_Volunteer"
  match '/contact', to: 'young_empowered#contact', via: 'get'
  match '/about', to: 'young_empowered#about', via: 'get'
   match '/project1', to: 'young_empowered#project1', via: 'get'
   match '/project2', to: 'young_empowered#project2', via: 'get'
   match '/project3', to: 'young_empowered#project3', via: 'get'
   match '/project4', to: 'young_empowered#project4', via: 'get'
   match '/project5', to: 'young_empowered#project5', via: 'get'
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
