# frozen_string_literal: true

Rails.application.routes.draw do
  get 'about/index'
  # get 'rank/index'
  # get 'rank/show'
  # get 'spell/index'
  # get 'spell/show'
  # get 'mastery/index'
  # get 'mastery/show'
  # get 'location/index'
  # get 'location/show'
  # get 'welcome/index'
  # get 'rank/index'
  # get 'quotes/index'
  # get 'champions/index'
  get '/welcome', to: 'champion#index'
  get '/about', to: 'about#index'
  get '/champion', to: 'champion#index'
  get '/champion/:id', to: 'champion#show', id: /\d+/
  get '/rank', to: 'rank#index'
  get '/rank/:id', to: 'rank#show', id: /\d+/
  get '/spell', to: 'spell#index'
  get '/spell/:id', to: 'spell#show', id: /\d+/
  get '/mastery', to: 'mastery#index'
  get '/mastery/:id', to: 'mastery#show', id: /\d+/
  get '/location', to: 'location#index'
  get '/location/:id', to: 'location#show', id: /\d+/

  root to: 'welcome#index'
  # get 'champions/show'
  # get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
