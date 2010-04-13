ActionController::Routing::Routes.draw do |map|
  map.resources :people, :only => :index
  map.root :controller => :people
end
