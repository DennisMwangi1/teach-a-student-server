Rails.application.routes.draw do
  resources :teachers
  resources :parents
  resources :students
  post '/studentlogin', to:"studentsessions#create"
  post 'parentlogin', to:"parentsessions#create"
  post 'teacherlogin', to:"teachersessions#create"
  get '/me' ,to:"students#show"
  get '/teacherme' ,to:"teachers#show"
  delete '/studentlogout', to:"studentsessions#destroy"
  delete '/parentlogout', to:"parentsessions#destroy"
  post '/studentsignup', to: 'students#create'
  post '/parentsignup', to:'parents#create'
  post '/teachersignup', to:'teachers#create'
  post '/requestsession', to: 'requested_sessions#create'
  post '/acceptsession', to: 'accepted_sessions#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
