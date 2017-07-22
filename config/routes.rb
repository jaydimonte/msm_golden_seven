Rails.application.routes.draw do
  
  # Route for bare domain:
  #get('/', { :controller => 'movies', :action => 'index' })

  # Routes for the Director resource:

  # READ
  get('/directors', { :controller => 'directors', :action => 'index' })
  get('/directors/:id', { :controller => 'directors', :action => 'show' })

  # CREATE
  get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })
  get('/create_director', { :controller => 'directors', :action => 'create_row' })

  # UPDATE
  get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
  get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })

  # DELETE
  get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })
  #------------------------------

  
  
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
