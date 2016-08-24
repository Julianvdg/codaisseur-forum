Rails.application.routes.draw do
    devise_for :users

    root 'questions#index'
    resources :questions do
        resources :answers
    end

    resources :profiles

    get "questions/:id" => "questions#show"

    get "user-management" => "profiles#index", as: 'user_management'
    
    get 'users/:id/approve'=> 'profiles#approve_user', as: 'approve_user'
end
