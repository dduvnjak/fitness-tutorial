FitnessTutorial::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Assets redirect
  get '/img/:name', to: redirect {|params, req| "/assets/#{params[:name]}.#{params[:format]}" }
  get '/images/:name', to: redirect {|params, req| "/assets/#{params[:name]}.#{params[:format]}" }
  # get '/fonts/:name', to: redirect {|params, req| "/assets/fonts/#{params[:name]}.#{params[:format]}" }


  resources :trainers

  resources :articles
  

  #get '/contact/new' => 'contacts#new'
 resources :inquiries, :only => [:new, :create] do
  get 'thank_you', :on => :collection
  end
  resources :signups, :only => [:index, :create]
  get 'signup' => 'signups#index'
  

  resources :sessions, :only => [:index, :create, :destroy]
  get 'login' => 'sessions#index'
  get 'logout' => 'sessions#destroy'

  resources :profiles, :only => [:index]
  get 'profile' => 'profiles#index'

  root 'home#index'

  post ':controller(/:action(/:id(.:format)))'
  get ':controller(/:action(/:id(.:format)))'
  put ':controller(/:action(/:id(.:format)))'

  get 'trainers/edit' => 'trainers#edit'

  put 'trainers/edit' => 'trainers#edit'


  #trainers.edit 'edit' :controller => 'trainers', :action => 'edit'

  

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
