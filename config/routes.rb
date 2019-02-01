Rails.application.routes.draw do

  resources :stakeholders do
    resources :ratings do
      resources :projects
    end
  end
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
