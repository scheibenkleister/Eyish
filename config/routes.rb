ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'home', :action => 'index'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users
  map.resources :home

  map.resource :session

  map.resources :photos
  map.resources :collections
  map.resources :photo_preview
  map.resources :collection_preview
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
