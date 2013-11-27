Michael::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'main#index'

  get 'contact/show', as: :contact

  resources :musicians, :only => [:show] do
    resources :gigs, :only => [:index]
    resources :pieces, :only => [:index]
    resources :musician_endorsements, :only => [:index]
    resources :musician_video_links, :only => [:index]
    resources :musician_images, :only => [:index]
    resources :genres, :only => [:index]
    resources :composers, :only => [:index]
    resources :musician_jobs, :only => [:index]
  end
  resources :genres, :only => [:show]
  resources :musician_jobs, :only => [:show]
  resources :composers, :only => [:show]
  resources :pieces, :only => [:show]
  resources :mentors, :only => [:show]
  resources :gigs, :only => [:show]
  resources :musician_endorsements, :only => [:show]
  resources :musician_video_links, :only => [:show]
  resources :musician_recording_files, :only => [:show]
  resources :accompanists, :only => [:show]
  resources :pianists, :only => [:show]
  resources :teachers, :only => [:show]
  resources :inquiries, :only => [:new, :create]
  resources :endorsements, :only => [:new, :create]
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
