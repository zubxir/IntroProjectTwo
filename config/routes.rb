# frozen_string_literal: true

Rails.application.routes.draw do
  get 'spell/index'
  get 'spell/show'
  get 'mastery/index'
  get 'mastery/show'
  get 'location/index'
  get 'location/show'
  get 'welcome/index'
  get 'rank/index'
  # get 'quotes/index'
  # get 'champions/index'
  get '/champion', to: 'champion#index'
  get '/champion/:id', to: 'champion#show', id: /\d+/

  root to: 'welcome#index'
  # get 'champions/show'
  # get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
