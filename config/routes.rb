Rails.application.routes.draw do

  resources :strategies
  resources :categories
  resources :users, only: [:index, :show, :create] do
    resources :projects
  end
  post 'signin', to: 'users#signin'
  get 'validate', to: 'users#validate'
  get 'user_projects', to: 'users#get_projects'
  post 'project_stakeholders', to: 'projects#get_stakeholders'
  get 'stakeholder_strategies', to: 'users#get_strategies'

  resources :stakeholders do
    resources :ratings


  end
end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
