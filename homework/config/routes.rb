MoviesApp::Application.routes.draw do

  get '/movies', controller: 'movies', action: 'index', as: 'movies'
  get '/movies/new', controller: 'movies', action: 'new', as: 'new_movie'
  get '/movies/:id', controller: 'movies', action: 'show', as: 'movie'
  get '/movies/:id/edit', controller: 'movies', action: 'edit', as: 'edit_movie'
  put '/movies/:id', controller: 'movies', action: 'update'
  post '/movies', controller: 'movies', action: 'create'
  delete '/movies/:id', controller: 'movies', action: 'destroy'

# CRUD for theaters

  get '/theaters', controller: 'theaters', action: 'index', as: 'theaters'
  get '/theaters/new', controller: 'theaters', action: 'new', as: 'new_theater'
  get '/theaters/:id', controller: 'theaters', action: 'show', as: 'theater'
  get '/theaters/:id/edit', controller: 'theaters', action: 'edit', as: 'edit_theater'
  put '/theaters/:id', controller: 'theaters', action: 'update'
  post '/theaters', controller: 'theaters', action: 'create'
  delete '/theaters/:id', controller: 'theaters', action: 'destroy'

end
