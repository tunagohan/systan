Rails.application.routes.draw do
  root 'top#index'

  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_scope :user do
    get "sign_in", :to => "devise/sessions#new"
    post "sign_in", :to => "devise/sessions#create"
    get 'sign_out' => 'devise/sessions#destroy'
  end

  resources :words,path: :wiki
  resources :users, only: [:destroy]
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
