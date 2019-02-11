Rails.application.routes.draw do

  resources :users, only: [:index, :show, :create] do
    resources :projects
  end
  post 'signin', to: 'users#signin'
  get 'validate', to: 'users#validate'
  get 'user_projects', to: 'users#get_projects'
  post 'project_stakeholders', to: 'projects#get_stakeholders'
  resources :stakeholders do
    resources :ratings


  end
end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
