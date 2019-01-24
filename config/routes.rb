Rails.application.routes.draw do

  resources :stakeholders do
    resources :ratings
      end
    end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
