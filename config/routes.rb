Rails.application.routes.draw do
  devise_for :users

  root 'questions#index'
  resources :questions do
    resources :answers
  end

  get "questions/:id" => "questions#show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
