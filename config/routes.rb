Rails.application.routes.draw do

    resources :news
    resources :contacts, only: [:new, :create]
    devise_for :users, :skip => [:sessions]
    as :user do
        get 'admin' => 'devise/sessions#new', :as => :new_user_session
        post 'admin' => 'devise/sessions#create', :as => :user_session
        delete 'signout' => 'devise/sessions#destroy', :as => :destroy_user_session
    end
    root 'welcome#index'
    post 'welcome/find_local_office' => 'welcome#find_local_office'
    get 'about' => 'menu#about'
    get 'offices' =>'menu#offices'
    get 'products' => 'menu#products'
    get 'local_office' => 'welcome#local_office'
    get 'licensee' => 'menu#licensee'
    get 'terms_and_conditions' => 'menu#termsandconditions'
    get 'privacy_policy' => 'menu#privacypolicy'
    get 'cookies' => 'menu#cookies'

    #Product pages
    get 'residential-epc' => 'menu#resepc'
    get 'commercial-epc' => 'menu#commepc'
    get 'floorplans' => 'menu#floorplans'
    #get 'greendeal' => 'menu#greendeal'
    get 'eco-boiler' => 'menu#ecoboiler'
    get 'decs' => 'menu#decs'
    get 'saps' => 'menu#saps'
    get 'air-pressure' => 'menu#pressure'
    get 'acoustic' => 'menu#acoustic'
    #get 'sustainable-home' => 'menu#sustainable'
    get 'asbestos' => 'menu#asbestos'
    get 'aircon' => 'menu#aircon'
    get 'fire-risk' => 'menu#firerisk'
    get 'legionella' => 'menu#legionella'


    get '*path' => redirect('/')

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
