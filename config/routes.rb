# frozen_string_literal: true

Rails.application.routes.draw do
  get 'search', to: 'search#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }

  root 'homes#home'

  resources :job_seekers, except: %i[new]
  resources :vacancys, except: %i[new]
  resources :company_details

  get 'homes/firstpage'
  get 'homes/userhome'
  get 'homes/about'
  get 'homes/home2'

  get '/vacancys/new/:id', to: 'vacancys#new', as: 'new_vacancy'
  get '/job_seekers/new/:id1/:id2', to: 'job_seekers#new', as: 'new_job_seeker'
  get 'vacancys/jobshow/:id', to: 'vacancys#jobshow', as: 'vacancys_job'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
