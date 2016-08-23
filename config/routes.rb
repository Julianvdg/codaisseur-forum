Rails.application.routes.draw do
    devise_for :users

    root 'questions#index'
    resources :questions do
        resources :answers
    end

    get "questions/:id" => "questions#show"

    get "user-management" => "profiles#index"

end
